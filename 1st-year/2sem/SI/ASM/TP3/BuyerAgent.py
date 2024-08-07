import spade
from spade.agent import Agent
import datetime
from RequestBehav import RequestBehav
from WaitBehav import WaitBehav

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class BuyerAgent(Agent):
    async def setup(self):
        print(f"BuyerAgent started at {datetime.datetime.now().time()}")
        start_at = datetime.datetime.now() + datetime.timedelta(seconds=5)
        # buy behaviour
        b1 = self.RequestBehav(period=1, start_at=start_at)
        self.add_behaviour(b1)
        # wait behaviour
        b2 = self.WaitBehav()
        self.add_behaviour(b2)

async def main(num,produto,quantidade):
    senderagent = BuyerAgent("buyer"+num+"@"+XMPP_SERVER, PASSWORD)
    await senderagent.start(produto,quantidade)

    await spade.wait_until_finished(senderagent)
    print("SenderAgent finished.")