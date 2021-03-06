#!/bin/bash

#SBATCH --no-requeue
#SBATCH --job-name="aiida-144803"
#SBATCH --get-user-env
#SBATCH --output=_scheduler-stdout.txt
#SBATCH --error=_scheduler-stderr.txt
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=02:55:00
#SBATCH --account=s580


module load espresso/5.1.2

'aprun' '-n' '8' '/apps/daint/5.2.UP02/espresso/5.1.2/intel_1501133/bin/pw.x' '-nk' '8' '-in' 'aiida.in'  > 'aiida.out' 
