import asyncio
import spade
from spade import wait_until_finished
from spade.agent import Agent
from spade.behaviour import CyclicBehaviour

XMPP_SERVER= "dummyagent1@laptop-8c5jf0n5"
PASSWORD = "NOPASSWORD"

class DummyAgent(Agent):
    class MyBehav(CyclicBehaviour):
        async def on_start(self):
            print("Agent starting behaviour . . .")
            self.counter = 0

        async def run(self):
            print("Counter: {}".format(self.counter))
            self.counter += 1
            if(self.counter>20):
                self.kill(exit_code=10)
                return True
            await asyncio.sleep(1)

        async def on_end(self) -> None:
            print("Agent finishing.")
            return await super().on_end()

    async def setup(self):
        print("Agent starting . . .")
        self.b = self.MyBehav()
        self.add_behaviour(self.b)

async def main():
    # conectar agente ao servidor
    dummy = DummyAgent(XMPP_SERVER, PASSWORD)
    await dummy.start()
    print("DummyAgent started. Check its console to see the output.")

    # wait until user interrupts with ctrl+C
    while not dummy.b.is_killed():
        try:
            await asyncio.sleep(1)
        except KeyboardInterrupt:
            break

    assert dummy.b.exit_code == 10

    await dummy.stop()



if __name__ == "__main__":
    spade.run(main())