from spade.behaviour import OneShotBehaviour
from spade.message import Message

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class InformBehav(OneShotBehaviour):
    async def run(self):
        print("InformBehav running")
        msg = Message(to="receiver_agent@"+XMPP_SERVER)       # Instantiate the message
        msg.set_metadata("performative", "inform")      # Set the "inform" FIPA performative
        msg.set_metadata("ontology", "myOntology")      # Set the ontology of the message content
        msg.set_metadata("language", "OWL-S")           # Set the language of the message content
        msg.body = "Hello I'm the sender." # Set the message content

        await self.send(msg)
        print("Message sent!")

        # set exit_code for the behaviour
        self.exit_code = "Job Finished!"

        # stop agent from behaviour
        await self.agent.stop()

    async def on_end(self) -> None:
        print("Exiting...")
        return await super().on_end()