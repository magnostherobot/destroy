if [ $(gpg --quiet --decrypt result | head -n 1) -eq 1 ]; then
    echo xargs --arg-file="peers.txt" --max-procs=20 --max-args=1 --replace='{}' \
        ssh '{}' sh "$PWD/fill.sh"
else
    echo "not time to destroy"
fi
