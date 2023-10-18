from z3 import *

pessoas = ["Ana","Nuno","Pedro","Maria"]
gabs = [1,2,3]
x = {}
for p in pessoas:
    x[p] = {}
    for g in gabs:
        x[p][g] = Bool("%s,%d" % (p,g))

s = Solver()


# Cada pessoa ocupa um único gabinete.
for p in pessoas:
  s.add(Implies(x[p][1], And(Not(x[p][2]),Not(x[p][3])) ))
  s.add(Implies(x[p][2],Not(x[p][3])))


# O Nuno e o Pedro não podem partilhar gabinete.
s.add(And([Implies(x["Pedro"][g], Not(x["Nuno"][g])) for g in gabs]))
## igual a um for loop fora sem o And

# Se a Ana ficar sozinha num gabinete, então o Pedro também terá
# que ficar sozinho num gabinete.
anaSo = Or([ And(x["Ana"][g],Not(x["Pedro"][g]),
                 Not(x["Maria"][g]),Not(x["Nuno"][g]))  for g in gabs])
pedroSo = Or([ And(x["Pedro"][g],Not(x["Ana"][g]),
                 Not(x["Maria"][g]),Not(x["Nuno"][g]))  for g in gabs])

s.add(Implies(anaSo,pedroSo))


# Cada gabinete só pode acomodar, no máximo, 2 pessoas.
comb = [("Ana","Nuno","Pedro","Maria"),("Ana","Pedro","Nuno","Maria"),
        ("Ana","Maria","Nuno","Pedro"),("Nuno","Pedro","Ana","Maria"),
        ("Nuno","Maria","Ana","Pedro"),("Pedro","Maria","Nuno","Ana")]        
for g in gabs:
  s.add(And([Implies(And(x[p1][g],x[p2][g]), And(Not(x[p3][g]),Not(x[p4][g])))
                for (p1,p2,p3,p4) in comb]))


s.push()

"""
if s.check() == sat:
    m = s.model()
    for p in pessoas:
        for g in gabs:
            if is_true(m[x[p][g]]):
                print("%s fica no gabinete %s" % (p,g))
else:
  print("Não tem solução.")

"""
# Testar o numero de possiveis distribuicoes de sala
num=0
if s.check()==sat:
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
    print("UNSAT")

print("No de possiveis alocações: %i" % num)