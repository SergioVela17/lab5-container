#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno26/lab5-HPC
#SBATCH -J lab5Submit
#SBATCH --exclusive
#SBATCH --output=RESULTADOS.txt
#SBATCH --mail-type=NONE
#SBATCH --mail-user=sergio.velam@um.es

module load singularity/3.8.0

echo "c++ 13-mers:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13
echo #
echo "c++ 14-mers:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14
echo #
echo "python 13-mers:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13.py
echo #
echo "python 14-mers:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14.py

module unload singularity/3.8.0
