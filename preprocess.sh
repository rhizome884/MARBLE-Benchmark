#!/bin/bash --login
#SBATCH -J preprocess 
#SBATCH --error=log_slurm/%x.e.%j
#SBATCH --output=log_slurm/%x.o.%j
#SBATCH --partition=c_gpu_comsc1
#SBATCH --time=00:10:00
#SBATCH --ntasks=20
#SBATCH --ntasks-per-node=20
#SBATCH --gres=gpu:1
#SBATCH --account=scw2033

# stop script if undefined variable or error happen
set -eu

echo 'Start script'

# COMMANDS

bash exp_scripts/preprocess/preprocess_emo.sh

echo 'End script'
