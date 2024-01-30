from z3 import *

pessoas = ["Ana","Beatriz","Carlos"]
aulas = [1,2,3,4,5]
x = {}
for p in pessoas:
    x[p] = {}
    for a in aulas:
        x[p][a] = Bool("%s,%d" % (p,a))

s = Solver()

# O carlos nao pode dar a primeira aula.
s.add(Not(x["Carlos"][1]))

# Se a Beatriz der a primeira aula, n˜ao poder´a dar a ´ultima. 
s.add(Implies(x["Beatriz"][1],Not(x["Beatriz"][5])))

# Cada aula tem pelo menos um formador.  
s.add(And([Or([x[p][a] for p in pessoas]) for a in aulas]))

combinacoes = []
aux = []
for p1 in pessoas:
    for p2 in pessoas:
        if(p1!=p2 and (combinacoes.__contains__((p1,p2))==False and combinacoes.__contains__((p2,p1))==False)):
            for pp in pessoas:
                if(pp!=p1 and pp!=p2):
                    combinacoes.append((p1,p2))
                    aux.append((p1,p2,pp))


# As quatro primeiras aulas tˆem no m´aximo um formador
for a in range(1,5):
    s.add(And([Implies(x[pp3][a],And(Not(x[pp1][a]),Not(x[pp2][a]))) for (pp1,pp2,pp3) in aux]))
    # ALTERNATIVA
#   s.add(Implies(x["Ana"][a],And(Not(x["Beatriz"][a]),Not(x["Carlos"][a]))))
#   s.add(Implies(x["Beatriz"][a],Not(x["Carlos"][a])))


# A ´ultima aula pode ter no m´aximo dois formadores.
s.add(And([Implies(And(x[pp1][5],x[pp2][5]),Not(x[pp3][5])) for (pp1,pp2,pp3) in aux]))

# Nenhum formador pode dar 4 aulas consecutivas. 
s.add(And([And(Not(And(x[p][1],x[p][2],x[p][3],x[p][4])),Not(And(x[p][2],x[p][3],x[p][4],x[p][5]))) for p in pessoas]))

s.push()

if s.check() == sat:
    m = s.model()
    for p in pessoas:
        for g in aulas:
            if is_true(m[x[p][g]]):
                print("%s fica alocado na sala %s" % (p,g))
else:
  print("Não tem solução.")



num = 0

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