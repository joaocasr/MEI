import spade
from spade.agent import Agent

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class ManagerAgent(Agent):
    taxi_map = {}

    async def setup(self):
        pass

    async def on_end(self):
        await self.agent.stop()

async def main():
    manager = ManagerAgent()
    await manager.start()

    await spade.wait_until_finished(manager)
