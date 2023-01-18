## when g is fixed 
#example 12
#Use the Metropolis Hastings method to construct a reversible, ergodic Markov Chain on state space={1,2,3} with Equilibrium distribution, pi=(5/18,11/18,2/18)

a1=5/18
a2= 11/18
a3= 2/18

a= c(a1,a2,a3)

AL= matrix(0, nrow = 3, ncol = 3)

for(i in 1:3){
  for (j in 1:3) {
    AL[i,j]= min(1, a[j]/a[i])
  }
}
AL

P = matrix(0, nrow = 3, ncol = 3)

#g(i|j)=g(j|i)=1/3
g=1/3

for (i in 1:3) {
  
  for(j in 1:3){
    
    P[i,j]=g*AL[i,j]
  }
  P[i,i]= 1- sum(P[i,])+P[i,i]
}
P
sum(P[1,]);sum(P[2,]);sum(P[3,])
sum(P[,1]);sum(P[,2]);sum(P[,3])


