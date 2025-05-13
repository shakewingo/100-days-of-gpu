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
    4. We call the collection of parallel blocks as grid, a grid can be either one- or two -dimensional collection of blocks

- 4.2.2 A Fun Example
It's difficult for me to understand all concepts mentioned, so I borrowed some notes from others below to help me understand 'grid'

#### MultiDimensional Grid Organization 
- A grid consists of one or more blocks and each block consits of one or more threads.
- So, in general, a grid is a 3D array of blocks and each block is a 3D array of threads.

Example program to show this: [Click here](./grids.cu) to redirect.

#### Mapping threads to a multidimensional data

Assuming, we are dealing with a picture **P** with the dimension of $62 \times 76$ and let's say the block size is $16 \times 16$,

Then, Calculating the grid sizes in along the dimensions:

```math
\text{Grid size in x }= \lceil \frac{\text{Image width}}{\text{Block width}} \rceil = \lceil\frac{76}{16} \rceil = \lceil4.75\rceil = 5
```
```math
\text{Grid size in y }= \lceil \frac{\text{Image height}}{\text{Block height}}\rceil = \lceil\frac{62}{16}\rceil = \lceil3.87\rceil=4
```
Hence, **total number of blocks in the grid** is: $5 \times 4 = 20$

> _**Note**_: <br>
**Clarification on CUDA’s Ordering**<br>
CUDA follows a (x, y, z) ordering for thread/block indexing, but image dimensions are usually expressed as (height × width).<br><br>- In image processing, it's common to write height × width (e.g., 62 × 76).<br>- In CUDA indexing, we think in terms of (x, y), where x is width and y is height.

#### Handling 2D Arrays in CUDA:

- CUDA C does not support direct 2D indexing for dynamically allocated arrays because the number of columns is unknown at compile time.

- Programmers must "flatten" the 2D array into a 1D array for proper memory access.

- Statically allocated arrays allow 2D indexing, but compilers internally convert them into 1D representations.
