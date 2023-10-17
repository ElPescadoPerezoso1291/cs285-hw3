for seed in $(seq 1 5); do
    python run_hw2.py --env_name InvertedPendulum-v4 -n 50 \
    --exp_name pendulum_default_s$seed \
    -rtg --use_baseline -bgs 10 -blr 1e-2 -na \
    --discount 0.99 --batch_size 1000 -lr 2e-2 \
    --seed $seed

done