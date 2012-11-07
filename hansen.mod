
var c k z r n; 
varexo e; 

end; 

parameters;

eta=1;
beta=0.99;
rho=0.36;
delta=0.025;
zss=1;   
A=0.5;
psi=0.95;
sigma=0.07;

end;

model;

c=(z*k(-1)^(rho))*n^(1-rho)+(1+delta)*k(-1)-k;
1=beta[c/c(+1)]^(eta)*r(+1); 
r=rho*(((z*k(-1)^(rho))*n^(1-rho)/k(-1))+(1-delta);  
log(z)=(1-psi)*log(zss)+psi*log(z(-1))+e;
A=(c^(-eta))*(1-rho)*((z*(k(-1)^(rho))*n^(1-rho))/n);
end;

initval;
k=9; 
c=4;
r=6; 
z=8;
n=2; 
e=0; 

end;

steady;

shocks;
var e=sigma^2; 
end;

stoch_simul;







