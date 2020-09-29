if [ "$ACTION" = "right" ]; then
  echo "You begin walking towards the light."
  cd ../Pickaxe
elif [ "$ACTION" = "left" ]; then
  echo "You begin walking in the dark."
  cd ../Lost
else 
  echo "Invalid command!"
fi