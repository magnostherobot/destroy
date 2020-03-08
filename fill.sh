for p in $(seq 1 $(nproc)) ; do
    yes "ha" > "/cs/scratch/trh/destroy-fill-$p.txt" &
done

wait
