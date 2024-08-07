from spade.behaviour import CyclicBehaviour

XMPP_SERVER= "laptop-8c5jf0n5"


class CONFIRM_TRANSP_BEHAV(CyclicBehaviour):
    async def run(self):
        print("Waiting for taxi...")

        msg = await self.receive(timeout=100)
        if msg:
            print("Message : {}".format(msg.body))
        else:
            print("Still waiting for taxi :/")
    
    async def on_end(self):
        await self.agent.stop()