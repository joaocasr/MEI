## pragma omp for
```c
    #pragma omp parallel num_threads(2)
    #pragma omp for
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d ", id, i);
    }
```
### Output
the <b>#pragma omp for</b> directive divides the loop into chunks, and each thread within the parallel region is assigned a specific chunk of iterations to execute.
In this case: Thread 0 -> 0<=i<50, Thread 1 -> 50<=i<100
```
T1:i50 T1:i51 T1:i52 T1:i53 T1:i54 T1:i55 T1:i56 T1:i57 T1:i58 T1:i59 T1:i60 T1:i61 T1:i62 T1:i63 T1:i64 T1:i65 T1:i66 T1:i67 T1:i68 T1:i69 T1:i70 T1:i71 T1:i72 T1:i73 T1:i74 T1:i75 T1:i76 T1:i77 T1:i78 T1:i79 T1:i80 T1:i81 T1:i82 T1:i83 T1:i84 T1:i85 T1:i86 T1:i87 T1:i88 T1:i89 T1:i90 T1:i91 T1:i92 T1:i93 T1:i94 T1:i95 T1:i96 T1:i97 T1:i98 T1:i99
T0:i0 T0:i1 T0:i2 T0:i3 T0:i4 T0:i5 T0:i6 T0:i7 T0:i8 T0:i9 T0:i10 T0:i11 T0:i12 T0:i13 T0:i14 T0:i15 T0:i16 T0:i17 T0:i18 T0:i19 T0:i20 T0:i21 T0:i22 T0:i23 T0:i24 T0:i25 T0:i26 T0:i27 T0:i28 T0:i29 T0:i30 T0:i31 T0:i32 T0:i33 T0:i34 T0:i35 T0:i36 T0:i37 T0:i38 T0:i39 T0:i40 T0:i41 T0:i42 T0:i43 T0:i44 T0:i45 T0:i46 T0:i47 T0:i48 T0:i49 master thread
```
## pragma omp master

```c
    #pragma omp parallel num_threads(2)
    #pragma omp master
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d ", id, i);
    }
```
### Output
the <b>#pragma omp master</b> is often used for tasks that need to be performed only once by a single thread within a parallel region.It allows to designate certain parts of the code to be executed only once by the master thread. Meanwhile the other threads can do their own work in parallel.
```
T0:i0 T0:i1 T0:i2 T0:i3 T0:i4 T0:i5 T0:i6 T0:i7 T0:i8 T0:i9 T0:i10 T0:i11 T0:i12 T0:i13 T0:i14 T0:i15 T0:i16 T0:i17 T0:i18 T0:i19 T0:i20 T0:i21 T0:i22 T0:i23 T0:i24 T0:i25 T0:i26 T0:i27 T0:i28 T0:i29 T0:i30 T0:i31 T0:i32 T0:i33 T0:i34 T0:i35 T0:i36 T0:i37 T0:i38 T0:i39 T0:i40 T0:i41 T0:i42 T0:i43 T0:i44 T0:i45 T0:i46 T0:i47 T0:i48 T0:i49 T0:i50 T0:i51 T0:i52 T0:i53 T0:i54 T0:i55 T0:i56 T0:i57 T0:i58 T0:i59 T0:i60 T0:i61 T0:i62 T0:i63 T0:i64 T0:i65 T0:i66 T0:i67 T0:i68 T0:i69 T0:i70 T0:i71 T0:i72 T0:i73 T0:i74 T0:i75 T0:i76 T0:i77 T0:i78 T0:i79 T0:i80 T0:i81 T0:i82 T0:i83 T0:i84 T0:i85 T0:i86 T0:i87 T0:i88 T0:i89 T0:i90 T0:i91 T0:i92 T0:i93 T0:i94 T0:i95 T0:i96 T0:i97 T0:i98 T0:i99 master thread
```
## pragma omp single
```c
int main() {
    printf("master thread\n");
    #pragma omp parallel num_threads(2)
    #pragma omp single
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d ", id, i);
    }
    printf("master thread\n");
}
```
### Output
the <b>#pragma omp single</b> is often used when you have a section of code that should be executed just once by any thread in a parallel region (not necessarily the master thread). it allows for potential load balancing and a non-deterministic choice of the executing thread.
```
T1:i0 T1:i1 T1:i2 T1:i3 T1:i4 T1:i5 T1:i6 T1:i7 T1:i8 T1:i9 T1:i10 T1:i11 T1:i12 T1:i13 T1:i14 T1:i15 T1:i16 T1:i17 T1:i18 T1:i19 T1:i20 T1:i21 T1:i22 T1:i23 T1:i24 T1:i25 T1:i26 T1:i27 T1:i28 T1:i29 T1:i30 T1:i31 T1:i32 T1:i33 T1:i34 T1:i35 T1:i36 T1:i37 T1:i38 T1:i39 T1:i40 T1:i41 T1:i42 T1:i43 T1:i44 T1:i45 T1:i46 T1:i47 T1:i48 T1:i49 T1:i50 T1:i51 T1:i52 T1:i53 T1:i54 T1:i55 T1:i56 T1:i57 T1:i58 T1:i59 T1:i60 T1:i61 T1:i62 T1:i63 T1:i64 T1:i65 T1:i66 T1:i67 T1:i68 T1:i69 T1:i70 T1:i71 T1:i72 T1:i73 T1:i74 T1:i75 T1:i76 T1:i77 T1:i78 T1:i79 T1:i80 T1:i81 T1:i82 T1:i83 T1:i84 T1:i85 T1:i86 T1:i87 T1:i88 T1:i89 T1:i90 T1:i91 T1:i92 T1:i93 T1:i94 T1:i95 T1:i96 T1:i97 T1:i98 T1:i99 master thread
```
## pragma omp critical
```c
int main() {
    printf("master thread\n");
    #pragma omp parallel num_threads(4)
    #pragma omp critical
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d ", id, i);
    }
    printf("master thread\n");
}
```
### Output
the <b>#pragma omp critical</b> it allows each thread to execute a piece of code, but they don't execute concurrently. it ensures mutual exclusion.
```
master thread
T0:i0 T0:i1 T0:i2 T0:i3 T0:i4 T0:i5 T0:i6 T0:i7 T0:i8 T0:i9 T0:i10 T0:i11 T0:i12 T0:i13 T0:i14 T0:i15 T0:i16 T0:i17 T0:i18 T0:i19 T0:i20 T0:i21 T0:i22 T0:i23 T0:i24 T0:i25 T0:i26 T0:i27 T0:i28 T0:i29 T0:i30 T0:i31 T0:i32 T0:i33 T0:i34 T0:i35 T0:i36 T0:i37 T0:i38 T0:i39 T0:i40 T0:i41 T0:i42 T0:i43 T0:i44 T0:i45 T0:i46 T0:i47 T0:i48 T0:i49 T0:i50 T0:i51 T0:i52 T0:i53 T0:i54 T0:i55 T0:i56 T0:i57 T0:i58 T0:i59 T0:i60 T0:i61 T0:i62 T0:i63 T0:i64 T0:i65 T0:i66 T0:i67 T0:i68 T0:i69 T0:i70 T0:i71 T0:i72 T0:i73 T0:i74 T0:i75 T0:i76 T0:i77 T0:i78 T0:i79 T0:i80 T0:i81 T0:i82 T0:i83 T0:i84 T0:i85 T0:i86 T0:i87 T0:i88 T0:i89 T0:i90 T0:i91 T0:i92 T0:i93 T0:i94 T0:i95 T0:i96 T0:i97 T0:i98 T0:i99
T2:i0 T2:i1 T2:i2 T2:i3 T2:i4 T2:i5 T2:i6 T2:i7 T2:i8 T2:i9 T2:i10 T2:i11 T2:i12 T2:i13 T2:i14 T2:i15 T2:i16 T2:i17 T2:i18 T2:i19 T2:i20 T2:i21 T2:i22 T2:i23 T2:i24 T2:i25 T2:i26 T2:i27 T2:i28 T2:i29 T2:i30 T2:i31 T2:i32 T2:i33 T2:i34 T2:i35 T2:i36 T2:i37 T2:i38 T2:i39 T2:i40 T2:i41 T2:i42 T2:i43 T2:i44 T2:i45 T2:i46 T2:i47 T2:i48 T2:i49 T2:i50 T2:i51 T2:i52 T2:i53 T2:i54 T2:i55 T2:i56 T2:i57 T2:i58 T2:i59 T2:i60 T2:i61 T2:i62 T2:i63 T2:i64 T2:i65 T2:i66 T2:i67 T2:i68 T2:i69 T2:i70 T2:i71 T2:i72 T2:i73 T2:i74 T2:i75 T2:i76 T2:i77 T2:i78 T2:i79 T2:i80 T2:i81 T2:i82 T2:i83 T2:i84 T2:i85 T2:i86 T2:i87 T2:i88 T2:i89 T2:i90 T2:i91 T2:i92 T2:i93 T2:i94 T2:i95 T2:i96 T2:i97 T2:i98 T2:i99
T1:i0 T1:i1 T1:i2 T1:i3 T1:i4 T1:i5 T1:i6 T1:i7 T1:i8 T1:i9 T1:i10 T1:i11 T1:i12 T1:i13 T1:i14 T1:i15 T1:i16 T1:i17 T1:i18 T1:i19 T1:i20 T1:i21 T1:i22 T1:i23 T1:i24 T1:i25 T1:i26 T1:i27 T1:i28 T1:i29 T1:i30 T1:i31 T1:i32 T1:i33 T1:i34 T1:i35 T1:i36 T1:i37 T1:i38 T1:i39 T1:i40 T1:i41 T1:i42 T1:i43 T1:i44 T1:i45 T1:i46 T1:i47 T1:i48 T1:i49 T1:i50 T1:i51 T1:i52 T1:i53 T1:i54 T1:i55 T1:i56 T1:i57 T1:i58 T1:i59 T1:i60 T1:i61 T1:i62 T1:i63 T1:i64 T1:i65 T1:i66 T1:i67 T1:i68 T1:i69 T1:i70 T1:i71 T1:i72 T1:i73 T1:i74 T1:i75 T1:i76 T1:i77 T1:i78 T1:i79 T1:i80 T1:i81 T1:i82 T1:i83 T1:i84 T1:i85 T1:i86 T1:i87 T1:i88 T1:i89 T1:i90 T1:i91 T1:i92 T1:i93 T1:i94 T1:i95 T1:i96 T1:i97 T1:i98 T1:i99
T3:i0 T3:i1 T3:i2 T3:i3 T3:i4 T3:i5 T3:i6 T3:i7 T3:i8 T3:i9 T3:i10 T3:i11 T3:i12 T3:i13 T3:i14 T3:i15 T3:i16 T3:i17 T3:i18 T3:i19 T3:i20 T3:i21 T3:i22 T3:i23 T3:i24 T3:i25 T3:i26 T3:i27 T3:i28 T3:i29 T3:i30 T3:i31 T3:i32 T3:i33 T3:i34 T3:i35 T3:i36 T3:i37 T3:i38 T3:i39 T3:i40 T3:i41 T3:i42 T3:i43 T3:i44 T3:i45 T3:i46 T3:i47 T3:i48 T3:i49 T3:i50 T3:i51 T3:i52 T3:i53 T3:i54 T3:i55 T3:i56 T3:i57 T3:i58 T3:i59 T3:i60 T3:i61 T3:i62 T3:i63 T3:i64 T3:i65 T3:i66 T3:i67 T3:i68 T3:i69 T3:i70 T3:i71 T3:i72 T3:i73 T3:i74 T3:i75 T3:i76 T3:i77 T3:i78 T3:i79 T3:i80 T3:i81 T3:i82 T3:i83 T3:i84 T3:i85 T3:i86 T3:i87 T3:i88 T3:i89 T3:i90 T3:i91 T3:i92 T3:i93 T3:i94 T3:i95 T3:i96 T3:i97 T3:i98 T3:i99 
```

## pragma omp barrier
```c
int main() {
    printf("master thread\n");
    #pragma omp parallel num_threads(4)
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        #pragma omp barrier // Synchronize all threads at this point
        printf("T%d:i%d ", id, i);
    }
    printf("master thread\n");
}
```
### Output
the <b>#pragma omp barrier</b> ensures that all the threads in the parallel region stop at a certain point before any of them can proceed. In this case the four threads will be barred before print the i, so it will be printed sections of four threads for each i (threads not necessarily in order).
```
T0:i0 T2:i0 T1:i0 T3:i0
T3:i1 T1:i1 T2:i1 T0:i1
T0:i2 T1:i2 T2:i2 T3:i2
T0:i3 T1:i3 T2:i3 T3:i3 
T0:i4 T2:i4 T1:i4 T3:i4 
T0:i5 T2:i5 T1:i5 T3:i5 
T0:i6 T2:i6 T1:i6 T3:i6 
T0:i7 T2:i7 T1:i7 T3:i7 
          ...
```

## pragma omp for schedule(static)
```c
int main() {
    printf("master thread\n");
    #pragma omp parallel num_threads(4)
    #pragma omp for schedule(static)
    // #pragma omp for schedule(static,10)
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d ", id, i);
    }
    printf("master thread\n");
}
```
### Output
the <b>#pragma omp for schedule(static)</b> distributes the iterations of the loop evenly among the threads. Each thread gets approximately the same number of iterations.
```
T0:i0 T0:i1 T0:i2 T0:i3 T0:i4 T0:i5 T0:i6 T0:i7 T0:i8 T0:i9 T0:i10 T0:i11 T0:i12 T0:i13 T0:i14 T0:i15 T0:i16 T0:i17 T0:i18 T0:i19 T0:i20 T0:i21 T0:i22 T0:i23 T0:i24 T2:i50 T2:i51 T2:i52 T2:i53 T2:i54 T2:i55 T2:i56 T2:i57 T2:i58 T2:i59 T2:i60 T2:i61 T2:i62 T2:i63 T2:i64 T2:i65 T2:i66 T2:i67 T2:i68 T2:i69 T2:i70 T2:i71 T2:i72 T2:i73 T2:i74 T1:i25 T1:i26 T1:i27 T1:i28 T1:i29 T1:i30 T1:i31 T1:i32 T1:i33 T1:i34 T1:i35 T1:i36 T1:i37 T1:i38 T1:i39 T1:i40 T1:i41 T1:i42 T1:i43 T1:i44 T1:i45 T1:i46 T1:i47 T1:i48 T1:i49 T3:i75 T3:i76 T3:i77 T3:i78 T3:i79 T3:i80 T3:i81 T3:i82 T3:i83 T3:i84 T3:i85 T3:i86 T3:i87 T3:i88 T3:i89 T3:i90 T3:i91 T3:i92 T3:i93 T3:i94 T3:i95 T3:i96 T3:i97 T3:i98 T3:i99 
```
### Output
the <b>#pragma omp for schedule(static,10)</b> distributes the iterations of the loop evenly among the threads. However in this case each thread will have a chunck of size 10, even though depending on the loop size some threads might have more work due to the fact that the number of iterations may not be evenly divisible by 10.
<br>
<br>
T0: 10; T1: 10 ; T2: 10 ; T3: 10 (left 100-40=60)
</br>
<br>
T0: 20; T1: 20 ; T2: 20 ; T3: 20 (left 100-80=20)
</br>
<br>
the 20 left will be given to one of the two threads randomly
eg:<br>
T0: 30; T1: 30 ; T2: 20 ; T3: 20
<br>
```
T0:i0 T0:i1 T0:i2 T0:i3 T0:i4 T0:i5 T0:i6 T0:i7 T0:i8 T0:i9 T0:i40 T0:i41 T0:i42 T0:i43 T0:i44 T0:i45 T0:i46 T0:i47 T0:i48 T0:i49 T0:i80 T0:i81 T0:i82 T0:i83 T0:i84 T0:i85 T0:i86 T0:i87 T0:i88 T0:i89
T2:i20 T2:i21 T2:i22 T2:i23 T2:i24 T2:i25 T2:i26 T2:i27 T2:i28 T2:i29 T2:i60 T2:i61 T2:i62 T2:i63 T2:i64 T2:i65 T2:i66 T2:i67 T2:i68 T2:i69 
T1:i10 T1:i11 T1:i12 T1:i13 T1:i14 T1:i15 T1:i16 T1:i17 T1:i18 T1:i19 T1:i50 T1:i51 T1:i52 T1:i53 T1:i54 T1:i55 T1:i56 T1:i57 T1:i58 T1:i59 T1:i90 T1:i91 T1:i92 T1:i93 T1:i94 T1:i95 T1:i96 T1:i97 T1:i98 T1:i99 
T3:i30 T3:i31 T3:i32 T3:i33 T3:i34 T3:i35 T3:i36 T3:i37 T3:i38 T3:i39 T3:i70 T3:i71 T3:i72 T3:i73 T3:i74 T3:i75 T3:i76 T3:i77 T3:i78 T3:i79
```
## pragma omp for schedule(dynamic)
```c
int main() {
    printf("master thread\n");
    #pragma omp parallel num_threads(2)
    #pragma omp for schedule(dynamic)
    //    #pragma omp for schedule(dynamic,10) 
    //    each thread will execute 10 iterations at a time before requesting more work
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d ", id, i);
    }
    printf("master thread\n");
}
```
### Output
The <b>#pragma omp for schedule(dynamic) </b> uses dynamic scheduling, which assigns iterations to threads as they become available(round-robin fashion). There is no predefined chunk size, and the iterations are distributed as threads complete their previous work.

```
T0:i1 T0:i2 T0:i3 T0:i4 T0:i5 T0:i6 T0:i7 T0:i8 T0:i9 T0:i10 T0:i11 T0:i12 T0:i13 T0:i14 T0:i15 T0:i16 T0:i17 T0:i18 T0:i19 T0:i20 T0:i21 T0:i22 T0:i23 T0:i24 T0:i25 T0:i26 T0:i27 T0:i28 T0:i29 T0:i30 T0:i31 T0:i32 T0:i33 T0:i34 T0:i35 T0:i36 T0:i37 T0:i38 T0:i39 T0:i40 T0:i41 T0:i42 T0:i43 T0:i44 T0:i45 T0:i46 T0:i47 T0:i48 T0:i49 T0:i50 T0:i51 T0:i52 T0:i53 T0:i54 T0:i55 T0:i56 T0:i57 T0:i58 T0:i59 T0:i60 
T1:i0 T1:i62 T1:i63 T1:i64 T1:i65 T1:i66 T1:i67 T1:i68 T1:i69 T1:i70 T1:i71 T1:i72 T1:i73 T1:i74 T1:i75 T1:i76 T1:i77 T1:i78 T1:i79 T1:i80 T1:i81 T1:i82 T1:i83 T1:i84 T1:i85 T1:i86 T1:i87 T1:i88 T1:i89 T1:i90 T1:i91 T1:i92 T1:i93 T1:i94 T1:i95 T1:i96 T1:i97 T1:i98 T1:i99 T0:i61
```