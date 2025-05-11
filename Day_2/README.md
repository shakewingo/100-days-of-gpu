# Summary of Day 2

Read CUDA by Example
## Chapter 3: Introduction to CUDA C
- CUDA C Program writes like C
- First Example: Hello World

    1. kernel<<<>>>(), is the magic linguistic method CUDA C uses for marking a function as device code. <<>> is not args but params that impact how runtime will launch our devide code; and the device code params gets passed within the parentheses.
    2. What does #include do: tells the compiler to include the contents of the Standard Input/Output library (stdio.h) before compiling, then it enables use of func like printf(), otherwise it'll throw an error
    3. Pass args and allocate memory to anyting useful on a device
    4. cudaMalloc(): can pass pointers allocated w it to functions that execute on either device or host; can use pointers allocated w it to functions that read/write memory from code that execute on either device or host