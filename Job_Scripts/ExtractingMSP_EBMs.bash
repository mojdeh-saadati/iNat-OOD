#!/bin/bash

# Copy/paste this job script into a text file and submit with the command:
#    sbatch thefilename

#SBATCH --time=24:00:00   # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=8  # 16 processor core(s) per node 
#SBATCH --gres=gpu:a100:1
#SBATCH --partition=gpu    # gpu node(s)
#SBATCH --job-name="calculate accuracies for resnet and vgg"
#SBATCH --mail-user=msaadati@iastate.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --output=slurm-%j.out # job standard output file (%j replaced by job id)
#SBATCH --error="training.e" # job standard error file (%j replaced by job id)

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
module load miniconda3
source activate iNatSoftware

# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_0.pth --checkpoint model_0  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_1.pth --checkpoint model_1  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_2.pth --checkpoint model_2  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_3.pth --checkpoint model_3  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
#srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_4.pth --checkpoint model_4  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
#srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_5.pth --checkpoint model_5  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_6.pth --checkpoint model_6  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
#srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_7.pth --checkpoint model_7  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_8.pth --checkpoint model_8  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_9.pth --checkpoint model_9  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_10.pth --checkpoint model_10  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_20.pth --checkpoint model_20  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_30.pth --checkpoint model_30  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_40.pth --checkpoint model_40  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_49.pth --checkpoint model_49  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/regnet50-142/EBM_results_nonInsecta2526/ --model regnet32


# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_0.pth --checkpoint model_0  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_1.pth --checkpoint model_1  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_2.pth --checkpoint model_2  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_3.pth --checkpoint model_3  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_4.pth --checkpoint model_4  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_5.pth --checkpoint model_5  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_6.pth --checkpoint model_6  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_7.pth --checkpoint model_7  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_8.pth --checkpoint model_8  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_9.pth --checkpoint model_9  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_10.pth --checkpoint model_10  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_20.pth --checkpoint model_20  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_30.pth --checkpoint model_30  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_40.pth --checkpoint model_40  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/checkpoints/model_49.pth --checkpoint model_49  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Resnet50-142/EBM_results_nonInsecta2526/ --model resnet50



# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/checkpoints/model_0.pth --checkpoint model_0  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/EBM_results_nonInsecta2526/ --model VGG
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/checkpoints/model_1.pth --checkpoint model_1  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/EBM_results_nonInsecta2526/ --model VGG
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/checkpoints/model_10.pth --checkpoint model_10  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/EBM_results_nonInsecta2526/ --model VGG
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/checkpoints/model_20.pth --checkpoint model_20  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/EBM_results_nonInsecta2526/ --model VGG
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/checkpoints/model_30.pth --checkpoint model_30  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/EBM_results_nonInsecta2526/ --model VGG
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/checkpoints/model_40.pth --checkpoint model_40  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/EBM_results_nonInsecta2526/ --model VGG
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/checkpoints/model_49.pth --checkpoint model_49  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/VGG-142/EBM_results_nonInsecta2526/ --model VGG


# balanced and unbalanced
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142_balanced/iNat_agimportant/inDistOOD/ --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_b/checkpoints/model_49.pth --checkpoint model_49  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_b/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_b/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142_balanced/iNat_agimportant/inDistOOD/ --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_ub/checkpoints/model_49.pth --checkpoint model_49  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_ub/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_ub/EBM_results_nonInsecta2526/ --model regnet32
# srun python /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142_balanced/iNat_agimportant/inDistOOD/ --outdist-test-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_ub_uniform/checkpoints/model_49.pth --checkpoint model_49  --MSP-path /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_ub_uniform/MSP_results_nonInsecta2526/ --EBM-path  /work/baskarg/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32_balancedSubset_ub_uniform/EBM_results_nonInsecta2526/ --model regnet32



# Best Model picture:
srun python /work/mech-ai/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/OOD_methods/EnergyBasedModel_MaximumSoftmaxProbability.py  --indist-test-path /work/mech-ai/Mojdeh/iNat_Project-mini-Insecta-2021/Data/in-distribution/iNat_ISU142/OOD_valid50 --outdist-test-path /work/mech-ai/Mojdeh/iNat_Project-mini-Insecta-2021/Data/out-distribution/noninsecta-2526c-valid/  --model-path  /work/mech-ai/Mojdeh/iNat_Project-mini-Insecta-2021/Models/Regnet32-142/checkpoints/model_49.pth --checkpoint model_49  --MSP-path /work/mech-ai/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/RQ_figures_notebooks/RQ4/ --EBM-path  /work/mech-ai/Mojdeh/iNat_Project-mini-Insecta-2021/Codes/RQ_figures_notebooks/RQ4/ --model regnet32