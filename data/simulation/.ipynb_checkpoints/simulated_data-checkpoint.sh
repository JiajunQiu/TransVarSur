#!/bin/bash
#SBATCH -J pre_training                  # A single job name for the array
#SBATCH -p gpu
#SBATCH -N 1                       # All cores on one machine
#SBATCH --gres gpu:1
#SBATCH --mem-per-gpu 48G
#SBATCH -t 29-12:00                  # Maximum execution time (D-HH:MM)
#SBATCH -o job_%A_%a.log        # Standard output
#SBATCH -e job_%A_%a.log        # Standard error
#SBATCH --exclude=inhccne0801
source /home/qiujiaju/.bashrc 
conda activate tf
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/qiujiaju/.local/lib/python3.9/site-packages/tensorrt
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/data/gcbds/users/qiujiaju/conda/envs/tf/lib
python3.9 /data/gcbds/resources/UKB/studies/risk_modeling/tensorflow/vadesc-main/simulated_data.py


