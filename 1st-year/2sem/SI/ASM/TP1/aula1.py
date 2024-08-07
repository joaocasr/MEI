from Person import Person
from Student import Student

def isparimpar(n):
    if(n<0):
        print("número negativo.")
    elif(n==0):
        print("número nulo.")
    elif(n%2==0):
        print("número par.")
    elif(n%2==0):
        print("número ímpar.")

def mymean(lista):
    n = len(lista)
    soma = sum(lista)
    print("média:"+str(soma/n))
isparimpar(10)
isparimpar(-10)
isparimpar(0)
mymean([10,3,5,7,3])

obj = Student("Joao","Castro",21,"Portuguese","MEI","1ST")
print(obj.__class__)
obj.printfname()

hone_book = {
"John" : [ "8592970000" ],
"Bob" : [ "7994880000" ],
"Tom" : [ "9749552647" ]
}

def getnumber(key):
    if(key in hone_book):
        print("chave: "+key+"\nvalue:"+str(hone_book[key]))
    else:
        print("Não existe.")

getnumber("João")
getnumber("Bob")