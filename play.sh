#!/bin/bash -e

set -e # Sets the script to exit if an error occurs

# The init function is called once at the beginning of an adventure It checks
# for a file called "init.sh" and executes it. This file should be used to
# initialize any starting variables.
function init {
    ROOT_DIR="$1" # Reads the first argument to the init function
    cd "$1" # Navigates to the specified adventure directory
    if [ -f "init.sh" ]; then # Checks if the init.sh file is present
        source init.sh # Runs init.sh
        run # Calls the run function
    else # If the script doesn't exist
        echo "ERROR! NO $(pwd)/init.sh FOUND!" # Display an error
        exit 1 # Exit
    fi
}

# The run function is the "Game Loop". This function continuously runs checking
# the current directory for a "description.txt" file, reading it and displaying
# it to the player. After the description is displayed, runs the get_input
# function.
function run {
    while true; do # Continually run the Game Loop
        if [ -f "description.txt" ]; then # Check the current directory for description.txt
            DESCRIPTION="$(cat description.txt)" # Load the description
            echo "$DESCRIPTION" # Display the descrition
            get_input # Call the get_input function
            sleep 1 # Wait 1 second
        else # If no description.txt is found
            echo "ERROR! NO $(pwd)/description.txt FOUND!" # print an error message
            exit 1 # and exit
        fi
    done
}

# This function asks the user for input and stores the results in the ACTION
# variable. Then, runs the "handler.sh" in the current directory.
function get_input {
    read -p "What do you do? " ACTION # Prints "What do you do?" and waits for the player to enter a command
    if [ "$ECHO_COMMAND" = "TRUE" ]; then
        echo -n "What do you do? "
        sleep 0.5
        echo_with_delay "$ACTION" 0.05
    fi
    if [ -f "handler.sh" ]; then # Checks if the handler.sh file exits
        source handler.sh # If it does, runs the handler.sh file
    else # Otherwise,
        echo "ERROR! NO $(pwd)/handler.sh FOUND!"  # Print an error message
        exit 1 # and exit
    fi
}

# This function outputs text slowly to the console. OUTPUT is the string to be
# displayed DELAY is the speed, in seconds, to wait between outputs
function echo_with_delay {
    OUTPUT="$1"
    DELAY="$2"
    for i in `seq 0 ${#OUTPUT}`; do
        echo -n "${OUTPUT:i:1}"
        sleep $DELAY
    done
    echo ""
}

# This function takes two arguments: $1 an adventure directory, $2 a test to run
# on that adventure. Each line in the specified test will be executed on the
# adventure. Essentially, this runs the game using the specified test and lets
# you watch the results.
function test {
    ADVENTURE_DIR="$1"
    TEST="$2"
    cat "$TEST" | sed '/^#/d' | (ECHO_COMMAND="TRUE" bash play.sh run "$ADVENTURE_DIR")
}

echo "TEST_VAR: $TEST_VAR"
DOCS="$(cat doc.txt)" # Loads the doc.txt file

if [ "$1" = "run" ]; then # Check if the run command was specified
    if [ -d "$2" ]; then # Checks if the directory that was specified exists
        init "$2" # If it does, runs the init function on that directory
    else  # Otherwise
      echo "Expected a directory! '$2' is not a directory." # Displays an error
      echo "$DOCS" # and prints the documentation
      exit 1 # Then exits
    fi
elif [ "$1" = "help" ]; then # Checks if the help command was specified
    echo "$DOCS" # If it was, prints the documentation
elif [ "$1" = "test" ]; then # Checks if the test command was specified
    if [ -d "$2" ]; then # Checks if the directory that was specified exists
        test "$2" "$3"
    else
      echo "Expected a directory! '$2' is not a directory." # Displays an error
      echo "$DOCS" # and prints the documentation
      exit 1 # Then exits
    fi

else # Otherwise, no valid command was entered
    echo "Invalid command!" # Display an error message
    echo "$DOCS" # Print the docs
    exit 1 # And exit
fi