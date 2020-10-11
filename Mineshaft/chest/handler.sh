if [ "$ACTION" = "open" ]; then
    if [ "$HAS_KEY" = "TRUE" ]; then
        echo "You take the key and finally unlock the chest."
        sleep 1
        WIN="$(cat win.txt)"
        echo "$WIN"
        exit 1
    else
        echo "The chest needs a key to be opened!"
    fi
elif [ "$ACTION" = "boulders" ]; then
    echo "You walk away from the chest."
    cd ../boulders
else 
  echo "Invalid command!"
fi