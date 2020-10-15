if [ "$ACTION" = "lift" ]; then #If you type "lift", then you will lift the boulders and gain a strength of 5 each time
    echo "My strength is '$STRENGTH'"
    if [ "$STRENGTH" -lt "10" ]; then #if your strength is less than 10 you will keep adding strength by 5
        echo "You pick up the weights and do a rep!"
        STRENGTH=$(( $STRENGTH + 5 ))
        sleep 1
        echo "Your strength is now $STRENGTH"
    else #If your strength is greater than 10, you will have the option to continue lifitng.
        echo "Your strength grows"
        echo "Maybe you can lift some more."
    fi
elif [ "$ACTION" = "forward" ]; then #if you move "forward", then you walk to the next room called chest.
    echo "You continue walking forward."
    cd ../chest
elif [ "$ACTION" = "back" ]; then #if you go back, you move to the previous room called lost.
    echo "You walk back to wear you came from."
    cd ../Lost
else #any other words typed will prompt you with "invalid command"
  echo "Invalid command!" 
fi