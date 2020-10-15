if [ "$ACTION" = "break" ]; then # if you "break", you will try and break the stone wall with your pickaxe that you have aquired
    if [ "$STRENGTH" -gt "9" ]; then #if your strength is greater than 9, you will be able to break through the wall
        if [ "$HAS_PICKAXE" = "TRUE" ]; then #if you have the pickaxe, you will be able to break through the wall
            echo "You break the wall easily because of your picaxe and workout routine."
            echo "You now can see the other side."
            cd ../ravine
        fi
    else #if you do not have the adequate strength of tools, you will not be able to break the wall
        echo "You try and break the wall with a pickaxe, but you're too weak."
    fi
elif [ "$ACTION" = "back" ]; then #if you go "back", then you will move back into the room called lost
    echo "You head back the way you came."
    cd ../Lost
else # any other command will prompt you with "invalid command"
  echo "Invalid command!"
fi