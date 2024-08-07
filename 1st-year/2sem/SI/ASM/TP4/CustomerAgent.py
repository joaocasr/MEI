import spade
from spade.agent import Agent
from REQ_TRANSP_BEHAV import REQ_TRANSP_BEHAV
from CONFIRM_TRANSP_BEHAV import CONFIRM_TRANSP_BEHAV
import datetime
import random



XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class CustomerAgent(Agent):
    x_posi = -1
    y_posi = -1
    x_desf = -1
    y_desf = -1

    async def setup(self):
        # Generate random location
        self.x_posi = random.randint(0,100)
        self.y_posi = random.randint(0,100)

        self.x_desf = random.randint(0,100)
        self.y_desf = random.randint(0,100)

        # client behaviour
        b1 = self.REQ_TRANSP_BEHAV(self.x_posi,self.y_posi,self.x_desf,self.y_desf)
        self.add_behaviour(b1)

        b2 = self.CONFIRM_TRANSP_BEHAV()
        self.add_behaviour(b2)


    async def on_end(self):
        await self.agent.stop()

async def main():
    client = CustomerAgent()
    await client.start()

    await spade.wait_until_finished(client)
