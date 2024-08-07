import spade

class HelloAgent(spade.agent.Agent):
    async def setup(self):
        print("Hello new world!")

async def main():
    dummy = HelloAgent("helloworld@laptop-8c5jf0n5", "NOPASSWORD")
    await dummy.start()

if __name__ == "__main__":
    spade.run(main())