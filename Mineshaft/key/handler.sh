if [ "$ACTION" = "take" ]; then
     if [ "$HAS_KEY" = "TRUE" ]; then
        echo "You already took the key."
         else
            echo "You take the key that is hanging."
            echo "You put they key around your neck so you won't lose it."
            HAS_KEY="TRUE"
        fi
elif [ "$ACTION" = "jump" ]; then
    echo "You jump back across the ravine."
    cd ../ravine
else 
  echo "Invalid command!"
fi