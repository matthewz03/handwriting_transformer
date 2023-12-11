#!/bin/bash
# number of compute nodes
#SBATCH -N 1
#SBATCH -t 66:00:00
#SBATCH -p p100_normal_q
#SBATCH --gres=gpu:1
#SBATCH -A cmda3634_rjh
#SBATCH -o project_train.out

# Submit this file as a job request with
# sbatch train.sh

# Change to the directory from which the job was submitted
cd $SLURM_SUBMIT_DIR

# Unload all except default modules
module reset

# Load the modules you need
module load Anaconda3/2020.11
module load cuda11.6/toolkit

# Activate conda environment called 'pytorch'
source activate pytorch

echo "Training"

# Run the program. Don't forget arguments!
# torchrun --standalone --nproc_per_node=gpu Project3.py
python train.py
#srun torchrun --nproc_per_node=1 --nnodes=4 --rdzv_id=$RANDOM --rdzv_backend=c10d --rdzv_endpoint=$head_node_ip:42203 Project3.py
# srun torchrun \
# --nnodes 4 \
# --nproc_per_node=1 \
# --rdzv_id $RANDOM \
# --rdzv_backend c10d \
# --rdzv_endpoint $head_node_ip:12345 \
# Project3.py

echo "Finished"

# The script will exit whether we give the "exit" command or not.
exit

