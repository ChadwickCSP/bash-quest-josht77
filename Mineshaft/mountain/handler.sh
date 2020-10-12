if [ "$ACTION" = "path" ]; then
  echo "you begin walking back down the mountain."
  cd ../outside
elif [ "$ACTION" = "take" ]; then
  echo "You take the new resources."
  HAS_FOOD="TRUE"
  HAS_WATER="TRUE"
elif [ "$ACTION" = "down" ]; then
     if [ "$HAS_FOOD" = "TRUE" ]; then
        echo "You move down with your food and water."
        sleep 1
        ASCII="$(cat ASCII.txt)"
        echo "$ASCII"
        cd ../minecart
    else
        echo "You head down."
        sleep 1
        LOSE="$(cat lose.txt)"
        echo "$LOSE"
        exit 1
     fi
else 
  echo "Invalid command!"
fi