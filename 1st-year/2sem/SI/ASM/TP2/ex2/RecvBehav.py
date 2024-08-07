from spade.behaviour import CyclicBehaviour

class RecvBehav(CyclicBehaviour):
    async def run(self):
        print("RecvBehav running")

        msg = await self.receive(timeout=20) # wait for a message for 20 seconds
        if msg:
            print("Message : {}".format(msg.body))
        else:
            print("Did not received any message after 20 seconds")
    
    async def on_end(self):
        await self.agent.stop()