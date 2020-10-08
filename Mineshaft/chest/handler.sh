if [ "$ACTION" = "open" ]; then
  echo "You try and open the chest."

elif [ "$ACTION" = "boulders" ]; then
    echo "You walk away from the chest."
    cd ../boulders
else 
  echo "Invalid command!"
fi