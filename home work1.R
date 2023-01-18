#Problem:
#The signal of thesystem has been: 0 0 0 1 1 0 1 0 1 1 recorded at 10 successive hours instants.
# Here, 0: No correction required, 1: Correction Required
#Q Estimate the TPM for the signal of the system.


X=matrix(c(0,0,0,1,1,0,1,0,1,1),ncol=1)
X
Tm=matrix(0,nrow=2,ncol=2)
Tm
n=length(X)
n
for(i in 1:(n-1)){
  if(X[i]==0 & X[(i+1)]==0){Tm[1,1]=Tm[1,1]+1}
  if(X[i]==0 & X[(i+1)]==1){Tm[1,2]=Tm[1,2]+1}
  if(X[i]==1 & X[(i+1)]==0){Tm[2,1]=Tm[2,1]+1}
  if(X[i]==1 & X[(i+1)]==1){Tm[2,2]=Tm[2,2]+1}
}
Tm
p=matrix(0,nrow=2,ncol=2)
p[1,1]=Tm[1,1]/sum(Tm[1,])
p[1,2]=Tm[1,2]/sum(Tm[1,])
p[2,1]=Tm[1,1]/sum(Tm[2,])
p[2,2]=Tm[1,1]/sum(Tm[2,])
p

p%*%p%*%p%*%p%*%p%*%p%*%p%*%p%*%p
