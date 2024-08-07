from spade.behaviour import PeriodicBehaviour
class ProfReviewBehav(PeriodicBehaviour):
    async def run(self):
        profit = 0

        for i in self.agent.products_sold:
            profit+=self.agent.products_sold[i]*self.agent.products_value[i]
        
        print("******************************")
        print("Agente: "+str(self.agent.jid))
        print("Profit: "+str(profit))
        print("******************************")

    async def on_end(self):
        await self.agent.stop()