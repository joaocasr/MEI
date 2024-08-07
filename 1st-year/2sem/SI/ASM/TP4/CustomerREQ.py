class CustomerREQ:
    def __init__(self,initx,inity,destx,desty):
        self.actualx = initx
        self.actualy = inity
        self.destinyx = destx
        self.destinyy = desty
    
    def getactualx(self):
        return self.actualx

    def getactualy(self):
        return self.actualy
    
    def getdestinyx(self):
        return self.destinyx
    
    def getdestinyy(self):
        return self.destinyy