import spade
from spade.agent import Agent
import datetime
from ReceiveRequestBehav import WaitRequestBehav
from ProfReviewBehav import ProfReviewBehav
import random

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class SellerAgent(Agent):
    products_sold = {}
    products_value = {}
    fruits =  ['Apple', 'Banana', 'Grapefruit', 'Orange', 'Pear', 'Melon', 'Strawberry']
    
    async def setup(self):
        for i in self.fruits:
            self.products_sold[i]=0
            self.products_value[i]= random.randint(1,10)
        # receive requests behaviour
        b1 = self.ReceiveRequestBehav()
        self.add_behaviour(b1)
        # check profits behaviour
        b2 = self.ProfReviewBehav(period=10)
        self.add_behaviour(b2)

async def main(num):
    selleragent = SellerAgent("seller"+num+"@"+XMPP_SERVER, PASSWORD)
    await selleragent.start()

    await spade.wait_until_finished(selleragent)
    print("SellerAgent finished.")