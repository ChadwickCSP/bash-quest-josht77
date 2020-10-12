if [ "$ACTION" = "right" ]; then
  echo "You begin walking towards the light."
  cd ../Pickaxe
elif [ "$ACTION" = "up" ]; then
  echo "You climb back up the ladder, too scared of the unknown."
  cd ../mountain
elif [ "$ACTION" = "left" ]; then
     if [ "$HAS_TORCH" = "TRUE" ]; then
        echo "The pathway lights up because of your torch."
        sleep 1
        DESCRIPTION="$(cat description.txt)"
        cd ../Lost
    else
        echo "You keep wallking and walking, but get lost in the dark. There is no returning."
        sleep 1
        LOSE="$(cat lose.txt)"
        echo "$LOSE"
        exit 1
     fi
else 
  echo "Invalid command!"
fi