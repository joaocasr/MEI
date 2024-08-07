from spade.message import Message
from spade.behaviour import PeriodicBehaviour

XMPP_SERVER= "laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class RequestBehav(PeriodicBehaviour):
    async def on_start(self,produto,quantidade):
        self.my_product = produto
        self.my_quantity = quantidade

    async def run(self):
        print("Buy behaviour running")
        msg = Message(to="seller@"+XMPP_SERVER)       # Instantiate the message
        msg.set_metadata("performative", "REQUEST")      # Set the "inform" FIPA performative
        msg.set_metadata("ontology", "myOntology")      # Set the ontology of the message content
        msg.set_metadata("language", "OWL-S")           # Set the language of the message content
        msg.body = str(self.my_product)+";"+str(self.my_quantity) # Set the message content

        await self.send(msg)
        print("Message sent!")

        # set exit_code for the behaviour
        self.exit_code = "Request Finished!"

    async def on_end(self):
        print("Exiting...")
        await self.agent.stop()