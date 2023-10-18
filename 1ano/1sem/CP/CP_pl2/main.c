#include <stdio.h>
#include <stdlib.h>

#define size 128
double **mat;
double **mat1,**mat2;
double **transp;

void allocation(int N){
    mat = (double **)malloc(N * sizeof(double*));
    mat1 = (double **)malloc(N * sizeof(double*));
    mat2 = (double **)malloc(N * sizeof(double*));
    transp = (double **)malloc(N * sizeof(double*));
    for(int i = 0; i < N; i++){
        mat[i] = (double *)malloc(N * sizeof(double));
        mat1[i] = (double *)malloc(N * sizeof(double));
        mat2[i] = (double *)malloc(N * sizeof(double));
        transp[i] = (double *)malloc(N * sizeof(double));
    }
}

void freeMemory(int N,double **mat){
    for(int i=0;i<N;i++){
        free(mat[i]);
    }
    free(mat);
}

void initial(int N) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            mat1[i][j] = rand() % 20;
            mat2[i][j] = rand() % 10;
        }
    }
}

void transpose(int N) {
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){
            transp[j][i] = mat2[i][j];
        }
    }
    freeMemory(size,mat2);
}

void calcMult(int N){
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){
            for(int k=0;k<N;k++){
                mat[i][j] += mat1[i][k] * transp[j][k];
            }
        }
    }
}

void printMatrix(double ** matrix,int N){
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){
            printf("%f ",matrix[i][j]);
        }
        printf("\n");
    }
}


int main() {
    allocation(size);
    initial(size);

    transpose(size);

    calcMult(size);
    printMatrix(mat,size);

    freeMemory(size,mat);
    freeMemory(size,mat1);
    freeMemory(size, transp);
    return 0;
}

