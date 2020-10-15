if [ "$ACTION" = "continue" ]; then # if you "continue", then you will walk to a dead end
  echo "You continue walking down the mysterious path."
  cd ../dead_end
elif [ "$ACTION" = "back" ]; then #if you walk "back", then you head back toward the entrance of the mineshaft with your new tools
  echo "You walk back the way you came with your new equipment"
  HAS_TORCH="TRUE"
  HAS_PICKAXE="TRUE"
  cd ../minecart
else #any other command will prompt "invalid command"
  echo "Invalid command!"
fi