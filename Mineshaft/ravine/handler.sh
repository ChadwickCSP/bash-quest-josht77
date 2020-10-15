if [ "$ACTION" = "jump" ]; then #if you "jump", then you will make a leap of faith across the ravine and enter the room that had the key
    echo "You take a leap of faith across the ravine."
    cd ../key
elif [ "$ACTION" = "return" ]; then #if you "return" then you will move back to the stone_wall
    echo "You head back toward the mouth of the cave."
    cd ../stone_wall
else #any other command will prompt you with "invalid command"
  echo "Invalid command!"
fi