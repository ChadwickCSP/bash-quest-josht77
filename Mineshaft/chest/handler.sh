if [ "$ACTION" = "open" ]; then #if you choose "open" you will try and open the chest
    if [ "$HAS_KEY" = "TRUE" ]; then #if you have the key, then you will take the key and be able to open the chest and win the game
        echo "You take the key and finally unlock the chest."
        sleep 1
        WIN="$(cat win.txt)"
        echo "$WIN"
        exit 1
    else #if you do not have a key, you will not be able to open the chest and be prompted to go find a key
        echo "The chest needs a key to be opened!"
    fi
elif [ "$ACTION" = "boulders" ]; then #action "boulders" will take you back to the room boulders
    echo "You walk away from the chest."
    cd ../boulders
else #any other command will prompt "Invalid command"
  echo "Invalid command!"
fi