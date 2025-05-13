// A program demonstrating the use of CUDA grids and blocks
#include <iostream>
#include <cuda_runtime.h>
using namespace std;

dim3 dimGrid(32, 1, 1); 
dim3 dimBlock(128, 1, 1);

__global__ void kernel(void){}

int main(void) {
  kernel<<<dimGrid, dimBlock>>>();  // Define how many blocks and threads will be parallelly executed
  cudaDeviceSynchronize(); // Ensure the kernel has finished executing before exiting
  int totalThreads = dimGrid.x * dimGrid.y * dimGrid.z * dimBlock.x * dimBlock.y * dimBlock.z;
  cout << "Total number of threads: " << totalThreads << endl;  // it uses the standard C++ cout stream from the <iostream> header
  return 0;
} 