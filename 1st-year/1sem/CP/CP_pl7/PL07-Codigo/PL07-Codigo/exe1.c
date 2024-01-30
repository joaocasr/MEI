#include<omp.h>
#include<stdio.h>

double f( double a ) {
    return (4.0 / (1.0 + a*a));
}
//pi = 3.141592653589793238462643;
int main() {
    double mypi = 0;
    int n = 10000000; // number of points to compute
    float h = 1.0 / n;
    #pragma omp parallel for // reduction(+:mypi)
    for(int i=0; i<n; i++) {
	double aux= f(i*h);
    	#pragma omp critical
        //#pragma omp atomic
        mypi += aux;
    }
    mypi = mypi * h;
    printf(" pi = %.10f \n", mypi);
}

//wPtkFm71
// sbatch --partition=cpar --cpus-per-task=4 time.sh+

/*
 *
 *-> CRITICAL
----2 cores---
more slurm-357804.out
pi = 3.1415927770

real	0m0.289s
user	0m0.575s
sys	0m0.001s

----4 cores---
slurm-357793.out
pi = 3.1415927770

real	0m1.444s
user	0m5.694s
sys	0m0.000s
----8 cores----
pi = 3.1415927770

real	0m2.680s
user	0m20.313s
sys	0m0.001s

b.

# Total Lost Samples: 2
#
# Samples: 19K of event 'cycles:ppp'
# Event count (approx.): 15830335591
#
# Overhead       Samples  Command  Shared Object     Symbol
# ........  ............  .......  ................  ...........................
#
    23.55%          4694  a.out    libgomp.so.1.0.0  [.] 0x0000000000018418
    17.45%          3478  a.out    libgomp.so.1.0.0  [.] 0x0000000000018515
    14.80%          2957  a.out    libgomp.so.1.0.0  [.] GOMP_critical_end
    13.72%          2740  a.out    libgomp.so.1.0.0  [.] GOMP_critical_start --> critical chamada a uma funcao externa ao entrar na zona critica
    10.53%          2100  a.out    libgomp.so.1.0.0  [.] 0x000000000001842a
     6.40%          1212  a.out    a.out             [.] main._omp_fn.0
     6.19%          1187  a.out    libgomp.so.1.0.0  [.] 0x000000000001842c
     1.28%           255  a.out    libgomp.so.1.0.0  [.] 0x000000000001841a
     1.14%           228  a.out    libgomp.so.1.0.0  [.] 0x000000000001850b
     0.89%           177  a.out    libgomp.so.1.0.0  [.] 0x0000000000018423
     0.81%           162  a.out    libgomp.so.1.0.0  [.] 0x000000000001850d
     0.53%           106  a.out    libgomp.so.1.0.0  [.] 0x0000000000018508
     0.42%            85  a.out    libgomp.so.1.0.0  [.] 0x00000000000183eb
     0.42%            84  a.out    a.out             [.] GOMP_critical_start@plt
     0.40%            79  a.out    a.out             [.] GOMP_critical_end@plt
     0.34%            68  a.out    libgomp.so.1.0.0  [.] 0x0000000000018427
     0.19%            37  a.out    libgomp.so.1.0.0  [.] 0x0000000000018407
     0.13%            26  a.out    libgomp.so.1.0.0  [.] 0x000000000001850a


 2-
 more slurm-357922.out
done!
Total of 100000 elements!

Setting up PAPI...done!
This system has 11 available counters.

Initializing Vector...done!

Wall clock time: 0.015402 secs

Wall clock time run 2: 4.181556 secs
PAPI_TOT_CYC = 30844929
PAPI_TOT_INS = 29018766
CPI = 1.06
Vector is sort...Valid result.
That's all, folks


 ---> Fração Sequencial
    N / N log2(N)

    Tpar = N + N/2* log2(N/2)
    2 PU's
 *
 * */