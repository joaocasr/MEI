#include<omp.h>
#include<stdio.h>

int main() {
    printf("master thread\n");
    #pragma omp parallel num_threads(2)
    #pragma omp for schedule(dynamic)
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d ", id, i);
    }
    printf("master thread\n");
}

//module load gcc/11.2.0
//gcc -O2 -fopenmp ex51.c
//--partition=cpar --cpus-per-task=2 ./a.out

//paralelismo fisico | logico
//ambas as threads separando o output são sequencias porem a ordem de cada uma é aleatoria

//regiao paralela | work sharing | sync
/*
 *  2.1. #pragma omp for - distribuicao das iteracoes dos loops pelas threads
 *  2.2. #pragma omp master
 *  2.3. #pragma omp single
 *
 *  #pragma omp critical-> pior que sequencial | penaliza à medida que o nº de cores aumenta
 *
 *  barrier -> T2:i0 T0:i0 T1:i0 T3:i0 T2:i1 T1:i1 T3:i1 T0:i1 T3:i2 T2:i2 T1:i2 T0:i2 T2:i3 T1:i3 T3:i3 T0:i3 T3:i4 T2:i4 T1:i4 T0:i4 T2:i5 T1:i5 T3:i5 T0:i5 T3:i6 T2:i6 T1:i6 T0:i6 T2:i7 T1:i7 T3:i7 T0:i7 T3:i8 T2:i8 T1:i8 T0:i8 T2:i9 T1:i9 T3:i9 T0:i9
 *  ordered -> pior que o critical
 *
 *  False sharing
 * */