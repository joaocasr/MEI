import spade
from spade.agent import Agent
from spade.behaviour import OneShotBehaviour
from spade.template import Template

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class ReceiverAgent(Agent):
    class RecvBehav(OneShotBehaviour):
        async def run(self):
            print("RecvBehav running")

            msg = await self.receive(timeout=20) # wait for a message for 20 seconds
            if msg:
                print("Message received with content: {}".format(msg.body))
            else:
                print("Did not received any message after 20 seconds")

            # stop agent from behaviour
            await self.agent.stop()

    async def setup(self):
        print("ReceiverAgent started")
        b = self.RecvBehav()
        template = Template()
        template.set_metadata("performative", "inform")
        self.add_behaviour(b, template)



async def main():
    receiveragent = ReceiverAgent("receiver@"+XMPP_SERVER, PASSWORD)
    await receiveragent.start(auto_register=True)
    print("Receiver started")

    await spade.wait_until_finished(receiveragent)
    print("Agents finished")


if __name__ == "__main__":
    spade.run(main())