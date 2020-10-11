if [ "$ACTION" = "lift" ]; then
    echo "My strength is '$STRENGTH'"
    if [ "$STRENGTH" -lt "10" ]; then
        echo "You pick up the weights and do a rep!"
        STRENGTH=$(( $STRENGTH + 5 ))
        sleep 1
        echo "Your strength is now $STRENGTH"
    else
        echo "Your strength grows"
        echo "Maybe you can lift some more."
    fi
elif [ "$ACTION" = "forward" ]; then
    echo "You continue walking forward."
    cd ../chest
elif [ "$ACTION" = "back" ]; then
    echo "You walk back to wear you came from."
    cd ../Lost
else 
  echo "Invalid command!"
fi