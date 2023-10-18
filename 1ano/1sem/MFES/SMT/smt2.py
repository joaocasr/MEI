from z3 import *


x0 = Int('x0')
x1 = Int('x1')
x2 = Int('x2')
y0 = Int('y0')
y1 = Int('y1')
z0 = Int('z0')
z1 = Int('z1')

s = Solver()

"""
z0=0
x1 = x0 + y0
if(y0 >=0){
    z1 = z0
    y1 = x1 - y0
    x2 = x1 - y1 
}else{
    z1 = x1 - y0
    x2 = y0
    y1 = 0
}
z1 = y0>0 ? 2x1 - y0 - y1 + z0 : x1
"""
s.add(z0==0)
s.add(x1== x0 + y0)
s.add(Implies(y0>=0,And(z1==z0,y1== x1-y0,x2==x1-y1)))
s.add(Implies(Not(y0>=0),And(z1==x1-y0,x2==y0,y1==0)))
s.add(Implies(y0>=0, z1 == 2 * x1 - y0 - y1 + z0))
s.add(Implies(Not(y0>=0), z1 == x1))

s.push()
if s.check()==sat:
    m= s.model()
    print(m)
else:
    print("Não há solução.")


s.add(Not(Implies(y0>0,And(x2==y0,y1==x0))))
s.push()
if s.check()==sat:
    m= s.model()
    print("A afirmacao a) é falsa.\nContra-exemplo:")
    print(m)
else:
    print("Se o valor inicial de y for positivo, o programa faz a troca dos valores de x e y entre si.")
s.pop()

s.add(Not(y1>=0))
s.push()
if s.check()==sat:
    m= s.model()
    print("A afirmacao b) é falsa.\nContra-exemplo:")
    print(m)
else:
    print("O valor final de y nunca é negativo.")
s.pop()

s.add(Not(z1==x0+y0))
s.push()
if s.check()==sat:
    m= s.model()
    print("A afirmacao c) é falsa.\nContra-exemplo:")
    print(m)
else:
    print("O valor final de z corresponde `a soma dos valores de entrada de x e y.")
s.pop()


s.add(Not(x2<0))
s.push()
if s.check()==sat:
    m= s.model()
    print("A afirmacao d) é falsa.\nContra-exemplo:")
    print(m)
else:
    print("O valor final de x ´e sempre negativo.")
s.pop()