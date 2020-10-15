if [ "$ACTION" = "turn" ]; then #if you "turn", you will move back to the room called pickaxe
  echo "With no other way to go, you turn back."
  cd ../Pickaxe
else #any other command will show "invalid command"
  echo "Invalid command!"
fi