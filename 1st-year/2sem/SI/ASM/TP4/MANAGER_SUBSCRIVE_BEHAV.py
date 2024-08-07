from spade.behaviour import CyclicBehaviour
from spade.message import Message
from CustomerREQ import CustomerREQ

import jsonpickle
MANAGER_JID = "manager@"
XMPP_SERVER= "laptop-8c5jf0n5"


class MANAGER_SUBSCRIVE_BEHAV(CyclicBehaviour):
    async def run(self):
        msg = await self.receive(timeout=100)
        if msg:
            message = jsonpickle.decode(msg.body)
            self.agent.taxi_map[message.getjid()] = message
        else:
            pass
    
    async def on_end(self):
        await self.agent.stop()