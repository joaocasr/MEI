from spade.behaviour import OneShotBehaviour
from spade.message import Message
from CustomerREQ import CustomerREQ

import jsonpickle
MANAGER_JID = "manager@"
XMPP_SERVER= "laptop-8c5jf0n5"


class REQ_TRANSP_BEHAV(OneShotBehaviour):
    async def run(self):
        mo = CustomerREQ(self.initx,self.inity,self.destx,self.desty)

        msg = Message(to=MANAGER_JID+XMPP_SERVER)      
        msg.body = jsonpickle.encode(mo)
        msg.set_metadata("performative","request")

        await self.send(msg)

    async def on_start(self,initx,inity,destx,desty):
        self.initx = initx
        self.inity = inity
        self.destx = destx
        self.desty = desty

    async def on_end(self):
        await self.agent.stop()