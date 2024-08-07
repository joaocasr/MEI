from Person import Person

class Student(Person):
    def __init__(self,primeiro,ultimo,idade,nacionalidade,curso,ano):
        super().__init__(primeiro,ultimo,idade,nacionalidade)
        self.curse = curso
        self.year = ano
