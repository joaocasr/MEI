from z3 import *

CPU1, CPU2 = Bools("CPU1 CPU2")
MB1, MB2 = Bools("MB1 MB2")
PG1, PG2 = Bools("PG1 PG2")
MON1, MON2 = Bools("MON1 MON2")
RAM1, RAM2 = Bools("RAM1 RAM2")


s = Solver()

s.add(Or(Not(MB1),Not(PG1),RAM1))
s.add(Implies(And(PG1,Not(RAM2)),CPU1))
s.add(Implies(CPU2,MB2))
s.add(Implies(MON1,And(PG1,RAM2)))

# Um e um só CPU
s.add(Or(CPU1,CPU2))
s.add(Implies(CPU1,Not(CPU2)))

# Um e um só MB
s.add(Or(MB1,MB2))
s.add(Implies(MB1,Not(MB2)))

# Um e um só PG
s.add(Or(PG1,PG2))
s.add(Implies(PG1,Not(PG2)))

# Um e um só RAM
s.add(Or(RAM1,RAM2))
s.add(Implies(RAM1,Not(RAM2)))

#computador poder´a ter ou n˜ao ter monitor
s.add(Or(Or(MON1,MON2),And(Not(MON1),Not(MON2))))

s.push()

if s.check()==sat:
    print("O conjunto de regras é consistente.")
    num = 0
    while(s.check()==sat):
        num+=1
        m = s.model()
        print(m)
        aux = []
        for l in m:
            aux.append(l() != m[l])
        s.add(Or([m for m in aux]))
else:
    print("O conjunto de regras é inconsistente.")
    
print("No de possiveis configurações: %i" % num)