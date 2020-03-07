if [ $(cat result) -eq 1 ]; then
    xargs --arg-file="peers.txt" --max-procs=20 --max-args=1 --replace='{}' \
        ssh '{}' sh "$PWD/fill.sh"
else
    echo "not time to destroy"
fi
