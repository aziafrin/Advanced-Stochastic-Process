#For daily COVID-19 affected case construct TM and TPM
#where 0-8: Normal Rate, 9-15: Moderate Rate, 16+: Severe Rate

date= c(1,2,3,4,5,6,7,8,9,10)
affected_case= c(0,7,10,15,8,3,4,19,6,8)
X=matrix(c(1,1,2,2,1,1,1,3,1,1),ncol=1)

#data1=cbind(date,affected_case,state)
#data2= as.matrix(data1)
n=length(X)
Tp= matrix(0,nrow=3,ncol=3)
for( i in 1:(n-1)){
  if(X[i]==1 & X[(i+1)]==1){Tp[1,1]=Tp[1,1]+1}
  if(X[i]==1 & X[(i+1)]==2){Tp[1,2]=Tp[1,2]+1}
  if(X[i]==1 & X[(i+1)]==3){Tp[1,3]=Tp[1,3]+1}
  if(X[i]==2 & X[(i+1)]==1){Tp[2,1]=Tp[2,1]+1}
  if(X[i]==2 & X[(i+1)]==2){Tp[2,2]=Tp[2,2]+1}
  if(X[i]==2 & X[(i+1)]==3){Tp[2,3]=Tp[2,3]+1}
  if(X[i]==3 & X[(i+1)]==1){Tp[3,1]=Tp[3,1]+1}
  if(X[i]==3 & X[(i+1)]==2){Tp[3,2]=Tp[3,2]+1}
  if(X[i]==3 & X[(i+1)]==3){Tp[3,3]=Tp[3,3]+1}
}
Tp

P= matrix(0,nrow=3,ncol=3)
P[1,1]=Tp[1,1]/sum(Tp[1,])
P[1,2]=Tp[1,2]/sum(Tp[1,])
P[1,3]=Tp[1,3]/sum(Tp[1,])
P[2,1]=Tp[2,1]/sum(Tp[2,])
P[2,2]=Tp[2,2]/sum(Tp[2,])
P[2,3]=Tp[2,3]/sum(Tp[2,])
P[3,1]=Tp[3,1]/sum(Tp[3,])
P[3,2]=Tp[3,2]/sum(Tp[3,])
P[3,3]=Tp[3,3]/sum(Tp[3,])
P
P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P%*%P
