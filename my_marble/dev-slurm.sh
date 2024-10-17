#!/bin/bash --login
#SBATCH -J dev_template
#SBATCH -o %x.o.%j
#SBATCH -e %x.e.%j

#SBATCH -n 1
#SBATCH -p dev
#SBATCH -A scw2033
#SBATCH -c 1
#SBATCH -t 00:00:33
#SBATCH --mail-type END
#SBATCH --mail-user hulmeed@cardiff.ac.uk

# stop script if undefined variable or error happen
set -eu

# some commands specific to your job
# for example
module purge
module load python
module list

echo 'Testing template 1 on the dev node'
