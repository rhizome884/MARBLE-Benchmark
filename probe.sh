#!/bin/bash --login
#SBATCH -J probe 
#SBATCH --error=log_slurm/%x.e.%j
#SBATCH --output=log_slurm/%x.o.%j
#SBATCH --partition=c_gpu_comsc1
#SBATCH --time=00:05:00
#SBATCH --ntasks=20
#SBATCH --ntasks-per-node=20
#SBATCH --gres=gpu:1
#SBATCH --account=scw2033

# stop script if undefined variable or error happen
set -eu

echo 'Start script'

# COMMANDS

# python . probe -c configs/mert/MERT-v1-95M/EMO.yaml
python . probe -c configs/mert/MERT-v1-95M/GTZAN.yaml

echo 'End script'
