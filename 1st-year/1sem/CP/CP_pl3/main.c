#include <stdio.h>
#include <stdlib.h>

#define size 4
double **mat;
double **mat1,**mat2;

void allocation(int N){
    mat = (double **)malloc(N * sizeof(double*));
    mat1 = (double **)malloc(N * sizeof(double*));
    mat2 = (double **)malloc(N * sizeof(double*));
    for(int i = 0; i < N; i++){
        mat[i] = (double *)malloc(N * sizeof(double));
        mat1[i] = (double *)malloc(N * sizeof(double));
        mat2[i] = (double *)malloc(N * sizeof(double));
    }
}

void initial(int N) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            mat1[i][j] = rand() % 20;
            mat2[i][j] = rand() % 10;
        }
    }
}

void calcMult(int N){
    for(int i=0;i<N;i++){
        for(int k=0;k<N;k++){
            for(int j=0;j<N;j++){
                mat[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
    }
}

void printMatrixs(int N){
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){
            printf("%f ",mat[i][j]);
        }
        printf("\n");
    }
}

void freeMemory(int N,double **mat){
    for(int i=0;i<N;i++){
        free(mat[i]);
    }
    free(mat);
}

int main() {
    allocation(size);
    initial(size);
    calcMult(size);
    printMatrixs(size);

    freeMemory(size,mat);
    freeMemory(size,mat1);
    freeMemory(size,mat2);
    return 0;
}
