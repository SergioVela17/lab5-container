#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno26/lab5-HPC
#SBATCH -J lab5Submit
#SBATCH --exclusive
#SBATCH --output=RESULTADOS.txt
#SBATCH --mail-type=NONE
#SBATCH --mail-user=sergio.velam@um.es

echo "c++ 13-mers:"
time ./k-mer13
echo #
echo "c++ 14-mers:"
time ./k-mer14
echo #
echo "python 13-mers:"
time python ./k-mer13.py
echo #
echo "python 14-mers:"
time python ./k-mer14.py
