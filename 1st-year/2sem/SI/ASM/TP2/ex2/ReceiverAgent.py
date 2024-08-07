import spade
from spade.agent import Agent
from RecvBehav import RecvBehav

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class ReceiverAgent(Agent):
    async def setup(self):
        print("ReceiverAgent started")
        self.behav = RecvBehav()
        self.add_behaviour(self.behav)

async def main():
    receiveragent = ReceiverAgent("receiver_agent@"+XMPP_SERVER, PASSWORD)
    await receiveragent.start()

    await spade.wait_until_finished(receiveragent)
    print("SenderAgent finished.")


if __name__ == "__main__":
    spade.run(main())