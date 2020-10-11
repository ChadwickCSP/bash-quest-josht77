if [ "$ACTION" = "break" ]; then
    if [ "$STRENGTH" -gt "9" ]; then
        if [ "$HAS_PICKAXE" = "TRUE" ]; then
            echo "You break the wall easily because of your picaxe and workout routine."
            echo "You now can see the other side."
            cd ../ravine
        fi
    else
        echo "You try and break the wall with a pickaxe, but you're too weak."
    fi
elif [ "$ACTION" = "back" ]; then
    echo "You head back the way you came."
    cd ../Lost
else 
  echo "Invalid command!"
fi