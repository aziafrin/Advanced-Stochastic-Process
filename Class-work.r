#example 1

n=10
x= matrix(0,n,1)
u=runif(n,0,1)
a=1/3
b=1/3
c=1/3
x[1]=ifelse(u[1]<a,1,ifelse(u[1]<a+b,2,3))
for (i in 1:(n-1)) {
  if(x[i]==1){
    a=2/5
    b=1/2
    c=1/10
  }
   if(x[i]==2){
     a=1/5
     b=7/10
     c=1/10
   }
  if(x[i]==3){
    a=2/5
    b=2/5
    c=1/5
  }
  x[i+1]=ifelse(u[(i+1)]<a,1,ifelse(u[(i+1)]<a+b,2,3))
}
Tm= matrix(0,nrow=3,ncol=3)
for(i in 1:(n-1)){
  if(x[i]==1 & x[(i+1)]==1){Tm[1,1]=Tm[1,1]+1}
  if(x[i]==1 & x[(i+1)]==2){Tm[1,2]=Tm[1,2]+1}
  if(x[i]==1 & x[(i+1)]==3){Tm[1,3]=Tm[1,3]+1}
  
  if(x[i]==2 & x[(i+1)]==1){Tm[2,1]=Tm[2,1]+1}
  if(x[i]==2 & x[(i+1)]==1){Tm[2,2]=Tm[2,2]+1}
  if(x[i]==2 & x[(i+1)]==1){Tm[2,3]=Tm[2,3]+1}
  
  if(x[i]==3 & x[(i+1)]==1){Tm[3,1]=Tm[3,1]+1}
  if(x[i]==3 & x[(i+1)]==1){Tm[3,2]=Tm[3,2]+1}
  if(x[i]==3 & x[(i+1)]==1){Tm[3,3]=Tm[3,3]+1}
}
Tm     #transition matrix

P= matrix(0,nrow=3,ncol=3)

for (r in 1:nrow(P)) {
  for (c in 1:ncol(P)) {
    P[r,c]= Tm[r,c]/ sum(Tm[r,])
    
  }
  
}

P # Answer 


r1= sum(Tm[1,])
r2= sum(Tm[2,])
r3= sum(Tm[3,])
p=rbind(Tm[1,]/r1,Tm[2,]/r2,Tm[3,]/r3)  #transition probability matrix
p
p %*% p %*% p %*% p %*% p %*% p %*% p %*% p %*% p %*% p %*% p%*% p%*% p%*% p%*% p%*% p

