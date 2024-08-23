#!/bin/bash
#The job should run on the standard partition
#SBATCH -p standard

#The name of the job is taxid
#SBATCH -J taxid

#The job requires 1 compute node
#SBATCH -N 1

#SBATCH --account=tyjames1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#SBATCH --cpus-per-task=4

#SBATCH --mem=10gb

#The maximum walltime of the job is 1 days
#SBATCH -t 3-00:00:00

#SBATCH --mail-user=saleh_rahimlou@hotmail.com
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

taxonkit --data-dir .taxonkit lineage /nfs/turbo/lsa-tyjames/mycology/Yongjie/Entorrhiza/New_Reads/Result_FSXU0302R/Kaiju_tax_ids.txt | tee FSXU0302R_lineage.txt
