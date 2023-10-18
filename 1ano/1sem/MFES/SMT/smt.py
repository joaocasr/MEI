from z3 import *

s = Solver()

S = Int('S')
E = Int('E')
N = Int('N')
D = Int('D')
M = Int('M')
O = Int('O')
R = Int('R')
Y = Int('Y')

vars = [S,E,N,D,M,O,R,Y]

for v in range(0,len(vars)):
    s.add(vars[v]>=0)
    s.add(vars[v]<=9)

s.add(Distinct(S,E,N,D,M,O,R,Y))
s.add(S!=0,M!=0)
s.add(1000*S+100*E+10*N+1*D + 1000*M + 100*O + 10*R + 1*E == 10000* M + 1000* O+ 100*N + 10*E + 1*Y)
s.push()
if(s.check()==sat):
    m = s.model()
    print(m)
else:
    print("Não existe solução.")