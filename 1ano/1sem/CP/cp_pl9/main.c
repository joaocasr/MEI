#include <mpi.h>
#include <stdio.h>
int main( int argc, char *argv[]) {
    int rank, msg;
    MPI_Status status;
    MPI_Init(&argc, &argv);
    MPI_Comm_rank( MPI_COMM_WORLD, &rank ); // gets this process rank

    /* Process 0 sends and Process 1 receives */
    int MAXP = 1000000;
    int SMAXP = 1000;
    int pack=MAXP/10;
    int *ar = new int[pack/2];

    if(rank==0){
        PrimeServer *ps1 = new PrimeServer();
        ps1->minitFilter(1,SMAXP/3,SMAXP);
        for(int i=0; i<10; i++) {
            generate(i*pack, (i+1)*pack, ar);
            ps1->mprocess(ar,pack/2);
            MPI_Send(ar,pack/2, MPI_INT, 1, 0, MPI_COMM_WORLD);
        }
    }
    if(rank==1){
        Primeserver *ps2 = new PrimeServer();
        ps2->minitFilter(SMAXP/3+1,2*SMAXP/3,SMAXP);
        int *ar = new int[pack/2];
        for(int i=0; i<10; i++) {
            MPI_Recv(ar,pack/2, MPI_INT, 0, 0, MPI_COMM_WORLD, &status);
            generate(i*pack, (i+1)*pack, ar);
            ps2->mprocess(ar,pack/2);
            MPI_Send(ar,pack/2, MPI_INT, 2, 0, MPI_COMM_WORLD);
        }

    }
    if(rank==2){
        PrimeServer *ps3 = new PrimeServer();
        ps3->minitFilter(2*SMAXP/3+1,SMAXP,SMAXP);
        int *ar = new int[pack/2];
        for(int i=0; i<10; i++) {
            MPI_Recv(ar,pack/2, MPI_INT, 1, 0, MPI_COMM_WORLD, &status);
            generate(i*pack, (i+1)*pack, ar);
            ps3->mprocess(ar,pack/2);
        }
        ps3->end();
        printf( "Received %d\n", msg);
    }
}
    MPI_Finalize();
    return 0;
}

