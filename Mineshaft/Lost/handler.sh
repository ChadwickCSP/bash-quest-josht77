if [ "$ACTION" = "right" ]; then
    echo "You take the path to the right."
    cd ../boulders
elif [ "$ACTION" = "left" ]; then
    echo "You take the path to the left."
    cd ../stone_wall
elif [ "$ACTION" = "back" ]; then
    echo "Too scared of the unknown, you make your way back."
    cd ../minecart
else 
  echo "Invalid command!"
fi