if [ "$ACTION" = "continue" ]; then
  echo "You continue walking down the mysterious path."
  cd ../dead_end
elif [ "$ACTION" = "back" ]; then
  echo "You walk back the way you came with your new equipment"
  cd ../minecart
else 
  echo "Invalid command!"
fi