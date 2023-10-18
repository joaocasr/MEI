from z3 import *


x0 = Int('x0')
x1 = Int('x1')
x2 = Int('x2')
y0 = Int('y0')
r = Int('r')

s = Solver()

c1 = (x1==x0-10)
c2 = Implies(y0<0,x2==x1-y0)
c3 = Implies(Not(y0<0),x2 == x1+y0)
s.add(Implies(x0>0,And(c1,c2,c3)))
s.add(Implies(And(x0>0,y0<0), r == 2 * (x0-10-y0)))
s.add(Implies(And(x0>0,y0>=0), r == 2 * (x0-10+y0)))
s.add(Implies(x0<=0,r== 2 * x0))
"""
if (x > 0)
{
    x = x - 10;
    if (y < 0)
        x = x - y;
    else
        x = x + y;
}
r = x + x;
"""
s.push()
if(s.check()==sat):
    m= s.model()
    print(m)
else:
    print("Não há solução.")

s.add(Not(x2>0))
s.push()
if(s.check()==sat):
    m= s.model()
    print("A afirmação a) é falsa.\nContra-exemplo:")
    print(m)
else:
    print("O valor final de x2 (x2) é sempre positivo.")

s.pop()

#“Se o valor inicial de x for superior a 15, no final do programa, r ´e superior x.”
s.add(Not(Implies(x0>15,r>x2)))
s.push()
if(s.check()==sat):
    m= s.model()
    print("A afirmação b) é falsa.\nContra-exemplo:")
    print(m)
else:
    print("A afirmação é veradeira.Se o valor inicial de x for superior a 15, no final do programa, r é superior x.")
