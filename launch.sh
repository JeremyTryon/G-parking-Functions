#!/bin/bash -l
module load OpenMPI
mpicc -o ArrayParallelTries ArrayParallelTries.c

sbatch --constraint=elves --ntasks-per-node=5 --nodes=1 --mem-per-cpu=8G --partition=ksu-gen-reserved.q,batch.q --time=499:03:00 beo.sh
