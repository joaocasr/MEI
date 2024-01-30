```c
int main() {
    int w=10;
    #pragma omp parallel shared(w)
    #pragma omp for
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d w=%d\n", id, i, w++);
    }
    printf("w=%d\n", w);
    
}
```
```
T1:i25 w=11
T1:i26 w=13
T1:i27 w=14
T1:i28 w=15
T1:i29 w=16
T1:i30 w=17
T1:i31 w=18
T1:i32 w=19
T1:i33 w=20
T1:i34 w=21
T1:i35 w=22
T1:i36 w=23
T1:i37 w=24
T1:i38 w=25
T1:i39 w=26
T3:i75 w=10
T0:i0 w=10
T3:i76 w=28
T3:i77 w=29
T3:i78 w=30
T3:i79 w=31
T3:i80 w=32
T0:i1 w=33
T1:i40 w=27
T0:i2 w=35
T0:i3 w=36
T1:i41 w=37
T0:i4 w=38
T1:i42 w=39
T3:i81 w=34
T1:i43 w=40
T3:i82 w=42
T1:i44 w=43
T1:i45 w=44
T1:i46 w=45
T3:i83 w=46
T3:i84 w=47
T3:i85 w=48
T3:i86 w=49
T3:i87 w=50
T3:i88 w=51
T3:i89 w=52
T1:i47 w=53
T3:i90 w=54
T1:i48 w=55
T3:i91 w=56
T3:i92 w=57
T1:i49 w=58
T0:i5 w=41
T0:i6 w=60
T0:i7 w=61
T0:i8 w=62
T0:i9 w=63
T3:i93 w=59
T0:i10 w=64
T3:i94 w=65
T0:i11 w=66
T3:i95 w=67
T0:i12 w=68
T3:i96 w=69
T0:i13 w=70
T3:i97 w=71
T0:i14 w=72
T3:i98 w=73
T0:i15 w=74
T3:i99 w=75
T0:i16 w=76
T0:i17 w=77
T0:i18 w=78
T0:i19 w=79
T0:i20 w=80
T0:i21 w=81
T0:i22 w=82
T0:i23 w=83
T0:i24 w=84
T2:i50 w=12
T2:i51 w=85
T2:i52 w=86
T2:i53 w=87
T2:i54 w=88
T2:i55 w=89
T2:i56 w=90
T2:i57 w=91
T2:i58 w=92
T2:i59 w=93
T2:i60 w=94
T2:i61 w=95
T2:i62 w=96
T2:i63 w=97
T2:i64 w=98
T2:i65 w=99
T2:i66 w=100
T2:i67 w=101
T2:i68 w=102
T2:i69 w=103
T2:i70 w=104
T2:i71 w=105
T2:i72 w=106
T2:i73 w=107
T2:i74 w=108
w=109 (expected w=100)
```
```c
int main() {
    int w=10;
    #pragma omp parallel
    #pragma omp for private(w)
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d w=%d\n", id, i, w++);
    }
    printf("w=%d\n", w);
}
```
```w pode ou nao ser inicializado a 10```
```
T0:i0 w=0
T0:i1 w=1
T0:i2 w=2
T0:i3 w=3
T0:i4 w=4
T0:i5 w=5
T0:i6 w=6
T0:i7 w=7
T0:i8 w=8
T0:i9 w=9
T3:i75 w=0
T0:i10 w=10
T0:i11 w=11
T0:i12 w=12
T0:i13 w=13
T0:i14 w=14
T3:i76 w=1
T0:i15 w=15
T1:i25 w=0
T3:i77 w=2
T3:i78 w=3
T3:i79 w=4
T3:i80 w=5
T3:i81 w=6
T3:i82 w=7
T3:i83 w=8
T1:i26 w=1
T2:i50 w=0
T0:i16 w=16
T0:i17 w=17
T0:i18 w=18
T2:i51 w=1
T1:i27 w=2
T0:i19 w=19
T2:i52 w=2
T1:i28 w=3
T2:i53 w=3
T0:i20 w=20
T2:i54 w=4
T0:i21 w=21
T2:i55 w=5
T3:i84 w=9
T2:i56 w=6
T3:i85 w=10
T0:i22 w=22
T0:i23 w=23
T0:i24 w=24
T1:i29 w=4
T2:i57 w=7
T2:i58 w=8
T2:i59 w=9
T2:i60 w=10
T1:i30 w=5
T2:i61 w=11
T1:i31 w=6
T3:i86 w=11
T1:i32 w=7
T1:i33 w=8
T1:i34 w=9
T1:i35 w=10
T1:i36 w=11
T1:i37 w=12
T1:i38 w=13
T1:i39 w=14
T3:i87 w=12
T1:i40 w=15
T3:i88 w=13
T1:i41 w=16
T1:i42 w=17
T1:i43 w=18
T1:i44 w=19
T1:i45 w=20
T1:i46 w=21
T1:i47 w=22
T1:i48 w=23
T1:i49 w=24
T3:i89 w=14
T3:i90 w=15
T2:i62 w=12
T3:i91 w=16
T2:i63 w=13
T3:i92 w=17
T2:i64 w=14
T3:i93 w=18
T2:i65 w=15
T3:i94 w=19
T2:i66 w=16
T3:i95 w=20
T2:i67 w=17
T3:i96 w=21
T2:i68 w=18
T3:i97 w=22
T2:i69 w=19
T3:i98 w=23
T2:i70 w=20
T3:i99 w=24
T2:i71 w=21
T2:i72 w=22
T2:i73 w=23
T2:i74 w=24
w=10
```
```w é inicializado a 10```
```c
int main() {
    int w=10;
    #pragma omp parallel
    #pragma omp for lastprivate(w)
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d w=%d\n", id, i, w++);
    }
    printf("w=%d\n", w);
}
```
```o valor de w da ultima thread é armazenada em w```
```
T1:i25 w=0
T1:i26 w=1
T1:i27 w=2
T1:i28 w=3
T1:i29 w=4
T1:i30 w=5
T1:i31 w=6
T1:i32 w=7
T1:i33 w=8
T1:i34 w=9
T1:i35 w=10
T1:i36 w=11
T1:i37 w=12
T1:i38 w=13
T1:i39 w=14
T3:i75 w=0
T0:i0 w=0
T3:i76 w=1
T3:i77 w=2
T3:i78 w=3
T3:i79 w=4
T3:i80 w=5
T3:i81 w=6
T3:i82 w=7
T3:i83 w=8
T3:i84 w=9
T0:i1 w=1
T3:i85 w=10
T0:i2 w=2
T3:i86 w=11
T2:i50 w=0
T1:i40 w=15
T2:i51 w=1
T2:i52 w=2
T2:i53 w=3
T2:i54 w=4
T2:i55 w=5
T1:i41 w=16
T2:i56 w=6
T0:i3 w=3
T3:i87 w=12
T3:i88 w=13
T0:i4 w=4
T3:i89 w=14
T0:i5 w=5
T0:i6 w=6
T3:i90 w=15
T0:i7 w=7
T1:i42 w=17
T0:i8 w=8
T0:i9 w=9
T0:i10 w=10
T1:i43 w=18
T1:i44 w=19
T0:i11 w=11
T1:i45 w=20
T0:i12 w=12
T0:i13 w=13
T0:i14 w=14
T1:i46 w=21
T0:i15 w=15
T2:i57 w=7
T0:i16 w=16
T0:i17 w=17
T0:i18 w=18
T3:i91 w=16
T2:i58 w=8
T1:i47 w=22
T3:i92 w=17
T2:i59 w=9
T1:i48 w=23
T2:i60 w=10
T3:i93 w=18
T3:i94 w=19
T3:i95 w=20
T3:i96 w=21
T2:i61 w=11
T1:i49 w=24
T0:i19 w=19
T2:i62 w=12
T2:i63 w=13
T2:i64 w=14
T2:i65 w=15
T0:i20 w=20
T3:i97 w=22
T3:i98 w=23
T3:i99 w=24
T0:i21 w=21
T0:i22 w=22
T0:i23 w=23
T0:i24 w=24
T2:i66 w=16
T2:i67 w=17
T2:i68 w=18
T2:i69 w=19
T2:i70 w=20
T2:i71 w=21
T2:i72 w=22
T2:i73 w=23
T2:i74 w=24
w=25
```

```c
int main() {
    int w=10;
    #pragma omp parallel 
    #pragma omp for reduction(+:w)
    for(int i=0;i<100;i++) {
        int id = omp_get_thread_num();
        printf("T%d:i%d w=%d\n", id, i, w++);
    }
    printf("w=%d\n", w);
}

```
```T0:i0 w=0
T0:i1 w=1
T0:i2 w=2
T0:i3 w=3
T0:i4 w=4
T3:i75 w=0
T0:i5 w=5
T0:i6 w=6
T0:i7 w=7
T0:i8 w=8
T0:i9 w=9
T1:i25 w=0
T2:i50 w=0
T1:i26 w=1
T1:i27 w=2
T1:i28 w=3
T1:i29 w=4
T2:i51 w=1
T1:i30 w=5
T3:i76 w=1
T3:i77 w=2
T0:i10 w=10
T3:i78 w=3
T0:i11 w=11
T3:i79 w=4
T1:i31 w=6
T0:i12 w=12
T1:i32 w=7
T1:i33 w=8
T1:i34 w=9
T1:i35 w=10
T1:i36 w=11
T1:i37 w=12
T1:i38 w=13
T1:i39 w=14
T2:i52 w=2
T0:i13 w=13
T2:i53 w=3
T0:i14 w=14
T0:i15 w=15
T0:i16 w=16
T0:i17 w=17
T0:i18 w=18
T0:i19 w=19
T0:i20 w=20
T0:i21 w=21
T0:i22 w=22
T0:i23 w=23
T0:i24 w=24
T2:i54 w=4
T2:i55 w=5
T2:i56 w=6
T2:i57 w=7
T2:i58 w=8
T2:i59 w=9
T2:i60 w=10
T1:i40 w=15
T3:i80 w=5
T3:i81 w=6
T3:i82 w=7
T3:i83 w=8
T3:i84 w=9
T3:i85 w=10
T1:i41 w=16
T3:i86 w=11
T1:i42 w=17
T3:i87 w=12
T1:i43 w=18
T3:i88 w=13
T1:i44 w=19
T3:i89 w=14
T1:i45 w=20
T3:i90 w=15
T1:i46 w=21
T3:i91 w=16
T1:i47 w=22
T3:i92 w=17
T1:i48 w=23
T3:i93 w=18
T1:i49 w=24
T3:i94 w=19
T3:i95 w=20
T3:i96 w=21
T3:i97 w=22
T3:i98 w=23
T3:i99 w=24
T2:i61 w=11
T2:i62 w=12
T2:i63 w=13
T2:i64 w=14
T2:i65 w=15
T2:i66 w=16
T2:i67 w=17
T2:i68 w=18
T2:i69 w=19
T2:i70 w=20
T2:i71 w=21
T2:i72 w=22
T2:i73 w=23
T2:i74 w=24
w=110
```

```c
#include<omp.h>
#include<stdio.h>
#define size 100000
double a[size], b[size];
int main() {
  for(int i=0;i<size; i++) {
        a[i] = 1.0/((double) (size-i));
        b[i] = a[i] * a[i];
  }
  double dot = 0;
  #pragma omp parallel 
  #pragma omp for reduction(+:dot)
  for(int i=0;i<size; i++) {
        dot += a[i]*b[i];
  }
  printf("Dot is %18.16f\n",dot);
}
```