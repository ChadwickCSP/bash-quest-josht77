if [ "$ACTION" = "take" ]; then #if you "take" then you will take the key and put it in your pocket
     if [ "$HAS_KEY" = "TRUE" ]; then #if had key is true, and you try and take the key again, you will be prompted with "You already took the key"
        echo "You already took the key."
         else #if you do not have the key, you will be able to take the hanging key
            echo "You take the key that is hanging."
            echo "You put they key around your neck so you won't lose it."
            HAS_KEY="TRUE"
        fi
elif [ "$ACTION" = "jump" ]; then #if you "jump", then you will jump across the ravine into the other room ston_wall
    echo "You jump back across the ravine."
    cd ../ravine
else #any other command will prompt you with "invalid command"
  echo "Invalid command!"
fi