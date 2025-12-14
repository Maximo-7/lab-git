#!/bin/bash

#SBATCH -p hpc-bio-mendel
#SBATCH --chdir=/home/alumno07
#SBATCH --ntasks=4
#SBATCH -o slurm-%j-cut.out

for fichero in fastq/Sample{1..4}.fastq
do
    ./file-cut.sh "$fichero" &
done
wait
