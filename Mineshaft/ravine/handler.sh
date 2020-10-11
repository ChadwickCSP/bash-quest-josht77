if [ "$ACTION" = "jump" ]; then
    echo "You take a leap of faith across the ravine."
    cd ../key
elif [ "$ACTION" = "return" ]; then
    echo "You head back toward the mouth of the cave."
    cd ../stone_wall
else 
  echo "Invalid command!"
fi