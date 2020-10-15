if [ "$ACTION" = "right" ]; then #if you go "right", then you will take the path to the right and end up in the room called boulders
    echo "You take the path to the right."
    cd ../boulders
elif [ "$ACTION" = "left" ]; then #if you go "left", then you will go to the room stone_wall
    echo "You take the path to the left."
    cd ../stone_wall
elif [ "$ACTION" = "back" ]; then #if you go "back", you will go back to the last room you were in minecart
    echo "Too scared of the unknown, you make your way back."
    cd ../minecart
else #any other command will prompt you with "invalid command"
  echo "Invalid command!"
fi