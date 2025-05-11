# Summary of Day 1

Read Programming
Massively Parallel
Processor; Cuda By Example
## Start Chapter 1 
- Why large perf gap between many-core GPU and multicore CPUs? - different design philosophy ![Fig1](./Screenshot%202025-05-07%20at%2023.11.56.png)
- GPU design philosophy specifically for intenstive numeric computation, while CPU is more better at sequential parts
- CUDA (Compute Unified Device Architecture) programming model,
introduced by NVIDIA in 2007, is designed to support joint CPU/GPU execution of an application

#
Read CUDA by Example
## Finish Chapter 1: Why CUDA? Why Now?
- By the mid-1990s, the demand for consumer applications employing 3D graphics
had escalated rapidly, setting the stage for two fairly significant developments.
First, the release of immersive, first-person games such as Doom, Duke Nukem
3D, and Quake helped ignite a quest to create progressively more realistic 3D envi-
ronments for PC gaming
- CUDA architecture: unified shader pipeline, the execution units on the GPU were allowed arbitrary read and
write access to memory as well as access to a software-managed cache known
as shared memory
- CUDA C became the first language specifically
designed by a GPU company to facilitate general-purpose computing on GPUs.
- Learned a bit GPU options: 1) Use Free Cloud Platforms: google colab/kaggle kernel 2) Use Paid Cloud GPU Services (paperspace/aws, own full control of the VM) 3) Use a Local CUDA Emulator (for Learning Only, not recommended) 4) Buy Cloud GPU Time Cheaply (RunPod, Lambda Labs, Vast.ai, own full control or only pay for GPU usage)
