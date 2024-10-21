#!/bin/bash --login
#SBATCH -J extract 
#SBATCH --error=log_slurm/%x.e.%j
#SBATCH --output=log_slurm/%x.o.%j
#SBATCH --partition=c_gpu_comsc1
#SBATCH --time=00:15:00
#SBATCH --ntasks=20
#SBATCH --ntasks-per-node=20
#SBATCH --gres=gpu:1
#SBATCH --account=scw2033

# stop script if undefined variable or error happen
set -eu

echo 'Start script'

# COMMANDS

# python . extract -c configs/mert/MERT-v1-95M/EMO.yaml
# python . extract -c configs/mert/MERT-v1-95M/GTZAN.yaml
# python . extract -c configs/mert/MERT-v1-95M/VocalSetT.yaml
python . extract -c configs/mert/MERT-v1-95M/VocalSetS.yaml
# python . extract -c configs/mule/VocalSetS.yaml # not working yet

echo 'End script'
