import spade
from spade.agent import Agent

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class TaxiAgent(Agent):
    async def setup(self):
        pass

    async def on_end(self):
        await self.agent.stop()

async def main():
    taxi = TaxiAgent()
    await taxi.start()

    await spade.wait_until_finished(taxi)
