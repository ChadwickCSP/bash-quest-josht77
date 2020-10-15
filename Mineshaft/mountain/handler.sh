if [ "$ACTION" = "path" ]; then #if you take the "path" then you walk back down the mountain and enter outside
  echo "you begin walking back down the mountain."
  cd ../outside
elif [ "$ACTION" = "take" ]; then #if you do action "take",then you will obtain the food and water
  echo "You take the new resources."
  HAS_FOOD="TRUE"
  HAS_WATER="TRUE"
elif [ "$ACTION" = "down" ]; then #if you do the action "down" then you will climb down the ladder into the mineshaft
     if [ "$HAS_FOOD" = "TRUE" ]; then #if you took the food before going down, then you will be able to continue with the game and enter room minecart
        echo "You move down with your food and water."
        sleep 1
        ASCII="$(cat ASCII.txt)"
        echo "$ASCII"
        cd ../minecart
    else #if you go "down" without the resources, then you will lose the game because you got lost exporing and starved
        echo "You head down."
        sleep 1
        LOSE="$(cat lose.txt)"
        echo "$LOSE"
        exit 1
     fi
else #you will be prompted with "invalid command" for anything else
  echo "Invalid command!"
fi