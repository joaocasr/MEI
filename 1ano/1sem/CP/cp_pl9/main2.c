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
        for(int j=0;j<N;j++){
            for(int k=0;k<N;k++){
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
    MPI_Status status;
    MPI_Init(&argc, &argv);
    MPI_Comm_rank( MPI_COMM_WORLD, &rank ); // gets this process rank
    MPI_Comm_size( MPI_COMM_WORLD, &size ); // gets this process rank
    if(rank==0) initial(size);

    MPI_Bcast( B,size*size,MPI_INT,B,size,MPI_INT, 0 /* root*/, MPI_COMM_WORLD ); // gets this process rank
    MPI_Scatter( void*sbuf,int scount,MPI_INT,void*rbuf,int rcount,MPI_INT,0,MPI_Comm comm)
    calcMult(size);
    printMatrixs(size);

    freeMemory(size,mat);
    freeMemory(size,mat1);
    freeMemory(size,mat2);
    MPI_Finalize();
    return 0;
}
