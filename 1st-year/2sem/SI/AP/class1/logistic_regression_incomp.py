import numpy as np
from dataset import Dataset
import matplotlib.pyplot as plt

class LogisticRegression:
    
    def __init__(self, dataset, standardize = False):
        if standardize:
            dataset.standardize()
            self.X = np.hstack ((np.ones([dataset.nrows(),1]), dataset.Xst ))
            self.standardized = True
        else:
            self.X = np.hstack ((np.ones([dataset.nrows(),1]), dataset.X ))
            self.standardized = False
        self.y = dataset.Y
        self.theta = self.theta = np.zeros(self.X.shape[1])
        self.data = dataset
            

    def printCoefs(self):
        print(self.theta)

    def probability(self, instance):
        x = np.empty([self.X.shape[1]])
        x[0] = 1
        x[1:] = np.array(instance[:self.X.shape[1]-1])
        if self.standardized:
            if np.all(self.sigma!= 0): 
                x[1:] = (x[1:] - self.data.mu) / self.data.sigma
            else: x[1:] = (x[1:] - self.mu) 
        return sigmoid ( np.dot(self.theta.T, x) )

    def predict(self, instance):
        p= self.probability(instance)
        res=0
        if(p==0): res=0.5
        if(p>5): res=1
        if(p<-5): res=0
        return res
  

    def costFunction(self, theta = None):
        if theta is None: theta= self.theta
        m = self.X.shape[0]
        # predictions
        p = sigmoid ( np.dot(self.theta.T,self.x) )
        # p = hteta(x)
        # y * log(p) + (1-y) log(1-p)
        cost = self.y * np.log(p) + (1-self.y) * np.log(1-p)
        res = (-1/m) * np.sum(cost) # somatorio de cost * (-1/m)
        return res

    def gradientDescent(self, dataset, alpha = 0.01, iters = 10000):
        m = self.X.shape[0]
        n = self.X.shape[1]
        self.theta = np.zeros(n)  
        for its in range(iters):
            J = self.costFunction()
            if its%1000 == 0: print(J)
            delta = self.X.dot(sigmoid(np.dot(self.theta.T,self.X)) - self.y)
            self.theta -= (alpha /m * np.sum(delta) )
                
                            
            
    def buildModel(self, dataset):
        self.optim_model()
 
    def optim_model(self):
        from scipy import optimize

        n = self.X.shape[1]
        options = {'full_output': True, 'maxiter': 500}
        initial_theta = np.zeros(n)
        self.theta, _, _, _, _ = optimize.fmin(lambda theta: self.costFunction(theta), initial_theta, **options)

    def plotModel(self):
        from numpy import r_
        pos = (self.y == 1).nonzero()[:1]
        neg = (self.y == 0).nonzero()[:1]
        plt.plot(self.X[pos, 1].T, self.X[pos, 2].T, 'k+', markeredgewidth=2, markersize=7)
        plt.plot(self.X[neg, 1].T, self.X[neg, 2].T, 'ko', markerfacecolor='r', markersize=7)
        if self.X.shape[1] <= 3:
            plot_x = r_[self.X[:,2].min(),  self.X[:,2].max()]
            plot_y = (-1./self.theta[2]) * (self.theta[1]*plot_x + self.theta[0])
            plt.plot(plot_x, plot_y)
            plt.legend(['class 1', 'class 0', 'Decision Boundary'])
        plt.show()


def sigmoid(x):
  return 1 / (1 + np.exp(-x))
    
  

# main - tests
def test():
    ds= Dataset("log-ex1.data")   
    logmodel = LogisticRegression(ds)
    logmodel.plotData()    
    print ("Initial cost: ", logmodel.costFunction())
    # result: 0.693

    logmodel.gradientDescent(ds, 0.002, 200000)
    
    #logmodel.optim_model()
    
    logmodel.plotModel()
    print ("Final cost:", logmodel.costFunction())
    
    ex = np.array([45,65])
    print ("Prob. example:", logmodel.probability(ex))
    print ("Pred. example:", logmodel.predict(ex))
    

if __name__ == '__main__':
    test()

