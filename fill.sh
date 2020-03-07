for p in $(seq 1 $(nproc)) ; do
    yes "test" > "/cs/scratch/trh/destroy-fill-$p.txt" &
done

wait
