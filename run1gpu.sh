#!/bin/bash
UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1)
file=logs/runs/`date +"%Y-%m-%d_%H-%M-%S"`_$UUID

./create_job.sh $file $@
sbatch job1gpu.slurm $file
