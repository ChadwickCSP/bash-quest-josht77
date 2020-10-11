if [ "$ACTION" = "down" ]; then
  echo "you begin climbing down the ladder."
  sleep 1
  ASCII="$(cat ASCII.txt)"
  echo "$ASCII"
  cd ../minecart
elif [ "$ACTION" = "path" ]; then
  echo "you begin walking back down the mountain."
  cd ../outside
else 
  echo "Invalid command!"
fi