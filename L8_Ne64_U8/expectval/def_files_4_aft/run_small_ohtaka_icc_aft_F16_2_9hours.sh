#!/bin/sh

#SBATCH -p F16cpu
##SBATCH -p i8cpu
##SBATCH -p F72cpu
#SBATCH --nodes=8
##SBATCH --nodes=72
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=4
#SBATCH --job-name="mVMC"
##SBATCH --time=30:00
#SBATCH --time=17:59:00
##SBATCH --time=23:59:00

#module purge
#module load intel_compiler/2020.2.254
#module load openmpi/4.0.4-intel-2020.2.254
#module list



echo "Date              = $(date)"
echo "Hostname          = $(hostname -s)"
echo "Working Directory = $(pwd)"
echo ""
echo "Number of Nodes Allocated      = $SLURM_JOB_NUM_NODES"
echo "Number of Tasks Allocated      = $SLURM_NTASKS"
echo "Number of Cores/Task Allocated = $SLURM_CPUS_PER_TASK"



#srun  /home/k0031/k003122/mVMCold/src/mVMC/vmc.out -e namelist.def #zqp_1_opt.dat
#srun  /home/k0528/k052800/work/mvmc_2/mVMC-1.2.0/build/src/mVMC/vmc.out -e namelist.def #zqp_1_opt.dat
#srun /home/k0528/k052800/work/mvmc_20230406_2_gcc/build/src/mVMC/vmc.out -e namelist.def
#srun /home/k0031/k003123/work/mvmc_20240405_1_icc/mVMC-1.2.0_build/src/mVMC/vmc.out -e namelist.def
#srun /home/k0031/k003123/work/mvmc_20240405_1_icc/mVMC-1.2.0_build/src/mVMC/vmc.out -e namelist.def ./output/_zqp_1_opt.dat

#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist.def zqp_init.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist.def
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist.def ./output/_zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft1.def ./output/zqp_opt.dat
srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft2.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft3.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft4.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft5.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft6.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft7.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft8.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft9.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft10.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft11.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft12.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft13.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft14.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft15.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft16.def ./output/zqp_opt.dat
#srun /home/k0031/k003123/work/mvmc_20240726_1_rbm/rbm_build/src/mVMC/vmc.out -e namelist_aft17.def ./output/zqp_opt.dat
