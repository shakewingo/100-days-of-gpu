# Summary of Day 3

Read CUDA by Example
## Chapter 3: Introduction to CUDA C
- 3.3 & 3.4: Querying Devices

    1. Page30-31 explains device prop and desc
    2. Under some situation, need to choose device based on their propery, e.g. cubeGetDevice, cubeDeviceProp, cudbChooseDevice, cubeSetDevice

## Chapter 4: Parallel Programming in CUDA C
- 4.2.1: GPU Vector Sum
    1. `__global__` qualifier + C code to name a func add()
    2. add<<<N, 1>>>, which first para represents # of parallel blocks in which we'd like the device to execute our kernel
    3. To tell which block is running, using blockIdx.x. Note that 2 dims of group of blocks is defined here
    4. We call the collection of parallel blocks as grid
