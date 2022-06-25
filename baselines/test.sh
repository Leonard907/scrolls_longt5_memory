#!/bin/bash
#SBATCH --output=/home/%u/slogs/sl-%x-%A-%a.out
#SBATCH --error=/home/%u/slogs/sl-%x-%A-%a.out
#SBATCH --job-name=qmsum_longt5-local
#SBATCH --nodes=1
#SBATCH --gres=gpu:2
#SBATCH --mem=16g
#SBATCH --cpus-per-task=4
#SBATCH --time=48:00:00
#SBATCH --array=0

python scripts/execute.py scripts/commands/finetune.py qmsum_longt5-local