if [ "$ACTION" = "right" ]; then #if you go "right", then you will walk toward the room with light and enter Pickaxe
  echo "You begin walking towards the light."
  cd ../Pickaxe
elif [ "$ACTION" = "up" ]; then #if you go "up", then you will climb back up the ladder and be bck on the mountain
  echo "You climb back up the ladder, too scared of the unknown."
  cd ../mountain
elif [ "$ACTION" = "left" ]; then #if you go "left" and HAS_TORCh is not true, then the game will end because you get lost
     if [ "$HAS_TORCH" = "TRUE" ]; then #if HAS_TORCH is true, the game will continue because your path lights up and you enter room Lost
        echo "The pathway lights up because of your torch."
        sleep 1
        DESCRIPTION="$(cat description.txt)"
        cd ../Lost
    else #You lose the game if you do not have the torch
        echo "You keep wallking and walking, but get lost in the dark. There is no returning."
        sleep 1
        LOSE="$(cat lose.txt)"
        echo "$LOSE"
        exit 1
     fi
else #You will be prompted with "invalid command"
  echo "Invalid command!"
fi