     if [ "$HAS_TORCH" = "TRUE" ]; then
        echo "The pathway lights up because of your torch."
        sleep 1
        DESCRIPTION="$(cat description.txt)"
    else
        echo "You keep wallking and walking, but get lost in the dark. There is no returning."
        sleep 1
        LOSE="$(cat lose.txt)"
        echo "$LOSE"
        exit 1
    fi
else 
  echo "Invalid command!"
fi