from spade.behaviour import CyclicBehaviour

class WaitBehav(CyclicBehaviour):
    async def run(self):
        print("WaitBehav running")

        msg = await self.receive(timeout=100)
        if msg:
            print("Message : {}".format(msg.body))
        else:
            print("Did not received any message after 100 seconds")
    
    async def on_end(self):
        await self.agent.stop()