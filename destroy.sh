if [ $(gpg --quiet --decrypt ../result | head -n 1) -eq 1 ]; then
    xargs --arg-file="../peers.txt" --max-procs=20 --max-args=1 --replace='{}' \
        ssh '{}' sh "$PWD/../fill.sh" &
    echo "it cannot be stopped."
else
    echo "not time to destroy"
fi
