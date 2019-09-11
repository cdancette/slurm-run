# slurm-run

Scripts to run gpu jobs on a slurm cluster

The scripts are adapted to the jeanzay cluster (every machine has 4 GPU and 160GB of memory)

Paths to scripts might need to be adapted.

The easier way is to copy the scripts from this repo to the directory where you run the scripts.

### Usage:

To run on 1 gpu: 

    ./run1gpu.sh <command>

example

    ./run1gpu.sh python train.py

To run on more gpus: use `run2gpu.sh` or `run4gpu.sh`

TODO: multi-machine job (more than 4 gpu)


## Interactive job

`salloc --ntasks=10 --threads-per-core=1 --gres=gpu:1 --partition=gpu_dev`

`srun --ntasks=10 --threads-per-core=1 --gres=gpu:1  --pty bash`
