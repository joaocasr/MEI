import spade
from spade.agent import Agent
from InformBehav import InformBehav

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class SenderAgent(Agent):
    async def setup(self):
        print("SenderAgent started")
        self.behav = InformBehav()
        self.add_behaviour(self.behav)

async def main():
    senderagent = SenderAgent("sender_agent@"+XMPP_SERVER, PASSWORD)
    await senderagent.start()

    await spade.wait_until_finished(senderagent)
    print("SenderAgent finished.")

if __name__ == "__main__":
    spade.run(main())