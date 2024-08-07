class Person:
    def __init__(self,primeiro,ultimo,idade,nacionalidade):
        self.first = primeiro
        self.last = ultimo
        self.age = idade
        self.nationality = nacionalidade
        
    def printfname(self):
        print("Primeiro: "+self.first+"\n"+"Último:"+self.last)
