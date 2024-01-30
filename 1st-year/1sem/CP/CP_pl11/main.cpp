#include <iostream>
#include <stencil.h>
#include <chrono>

#define NUM_BLOCKS 512
#define NUM_THREADS_PER_BLOCK 256
#define SIZE NUM_BLOCKS*NUM_THREADS_PER_BLOCK
using namespace std;

void stencilKernel (float *a, float *c) {
    int id = blockIdx.x * blockDim.x + threadIdx.x;
    int lid = threadIdx.x; // local thread id within a block
    // thread coloca os valores em memoria rapida
    __shared__ float temp[NUM_THREADS_PER_BLOCK + 4];// array local  problema das bordas
    temp[lid + 2] = a[id + 0];
    if (lid<2) temp[lid]=a[id-2];
    __syncthreads(); // wait for all threads within a block 256 escalonadas em blocos de 16 | barreira local garantir que ja fizeram as copias dos registos
    //nao seria necessario para blocos superiores a 16
    c[id] = 0;
    for (int n = -2; n <= 2; n++) {//nunca mais vamos a memoria vamos buscar os valores à memoria rapida
        if ((id + n>= 0) && (id + n < SIZE))
            //c[id] += a[id + n];
            c[id] += temp[ lid + n + 2]
    }
}

void stencil (float *a, float *c) {
    chrono::steady_clock::time_point begin = chrono::steady_clock::now();
    for (int i=0; i <= SIZE; i++) {
        for(int n=-2;n<=2; n++)
            if((i+n>=0) && (i+n<SIZE))
                c[i] += a[i+ n];
    }
}

/*
 *
 *
 * SIMD processor
 * ganho apenas com muitas threads
 * grau 16 quanto maior mais penalizado pelos ifs
 * escalonamento a nivel do hardwware (warp scheduler)
 * temos um ganho eficiente s as threads estiverem a aceder endereços alinhados
 * *
 * **/