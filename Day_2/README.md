# Summary of Day 1

Read Programming
Massively Parallel
Processor; Cuda By Example
## Chapter 3: Introduction to CUDA C
- CUDA C Program writes like C
- First Example

    1. kernel<<<>>>(), is the magic linguistic method CUDA C uses for marking a function as device code. <<>> is not args but params that impact how runtime will launch our devide code; and the device code params gets passed within the parentheses.
    2. Pass args
- Querying Devices
