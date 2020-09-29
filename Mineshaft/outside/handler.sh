if [ "$ACTION" = "climb" ]; then
  echo "You ascend the mountain."
  cd ../mountain
elif [ "$ACTION" = "home" ]; then
    echo "Feeling scared and tired, you head home to see your family."
    exit 0
else 
  echo "Invalid command!"
fi