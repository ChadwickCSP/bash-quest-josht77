if [ "$ACTION" = "climb" ]; then #if you "climb" then you will walk to the top of the mountain 
  echo "You ascend the mountain."
  cd ../mountain
elif [ "$ACTION" = "home" ]; then #if you go "home" then you will end the game and walk to your home village because you were too scared
    echo "Feeling scared and tired, you head home to see your family."
    exit 0
else # any other command will prompt "invalid command"
  echo "Invalid command!"
fi