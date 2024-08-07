class TaxiREQ:
    def __init__(self,id,initx,inity,available):
        self.jid = id
        self.actualx = initx
        self.actualy = inity
        self.availability = available

    def getjid(self):
        return self.jid

    def getactualx(self):
        return self.actualx

    def getactualy(self):
        return self.actualy
    
    def getavailability(self):
        return self.availability