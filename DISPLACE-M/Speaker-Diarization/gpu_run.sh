#!/bin/bash
#SBATCH --job-name=displace_sd_baseline
#SBATCH --output=displace_%j.out
#SBATCH --error=displace_%j.err

# Time
#SBATCH --time=12:00:00

# Resources
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=64GB

# GPU
#SBATCH --gres=gpu:A5000:2

# Queue (change if your cluster uses a different partition name)
#SBATCH --partition=short

# activate env
echo "Activating conda environment"
CONDA_BASE=$(conda info --base)
source "$CONDA_BASE/etc/profile.d/conda.sh"
conda activate diarizen

echo "Going to the script directory and running the script"
cd ~/Nakibul/DISPLACE_SD_BASELINE/DISPLACE-2026-Baselines/Track1_SD

echo "Running the baseline script"
./run.sh