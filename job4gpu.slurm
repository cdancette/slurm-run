#!/bin/bash
#SBATCH --job-name=gpu_multi_mpi     # nom du job
#SBATCH --partition=gpu_gct3         # demande d'allocation sur la partition GPU
#SBATCH --ntasks=1                   # nombre de tâche MPI
#SBATCH --ntasks-per-node=1          # nombre de tâche MPI par noeud
#SBATCH --gres=gpu:4                 # nombre de GPU à réserver par nœud
#SBATCH --cpus-per-task=40           # nombre de coeurs à réserver par tâche
#SBATCH --threads-per-core=1         # on réserve des coeurs physiques et non logiques
#SBATCH --time=20:00:00              # temps d'exécution maximum demande (HH:MM:SS)
#SBATCH --output=logs/jobs/%j.out # nom du fichier de sortie
#SBATCH --error=logs/jobs/%j.out  # nom du fichier d'erreur (ici commun avec la sortie)
     
## echo des commandes lancées
set -x
# chargement des modules

#module load python/3.7.3
#conda activate murel
 
# exécution du code
srun --mpi=pmi2 $1 #/gpfslocalsup/pub/idrtools/bind_gpu.sh ./script.sh
