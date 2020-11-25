#srun --ntasks=1 --cpus-per-task=16 --mem-per-cpu=4096 --time=02:00:00 --partition=pascalnodes --gres=gpu:2 --job-name=NLP --pty /bin/bash
srun --ntasks=1 --cpus-per-task=16 --mem-per-cpu=4096 --time=1-00:00:00 --partition=pascalnodes-medium --gres=gpu:2 --job-name=NLP --pty /bin/bash

#conda activate /share/apps/rc/software/Anaconda3/5.2.0/envs/DeepNLP
#module load cuda92/toolkit/9.2.88
#module load CUDA/9.2.88-GCC-7.3.0-2.30

conda activate /share/apps/rc/software/Anaconda3/2020.07/envs/deepNLP2020


#module load cuda10.2/toolkit/10.2.89
#module load CUDA/10.2.89-GCC-6.4.0-2.28

conda activate /share/apps/rc/software/Anaconda3/2020.07/envs/deepNLP2020
module load cuda10.1/toolkit/10.1.243 
module load CUDA/10.1.243 

