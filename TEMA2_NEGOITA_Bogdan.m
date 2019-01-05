t=0:0.001:40;
T=40;
% Original Function
x=(square(t/(2.025*pi), 15/40*100)+1)/2;
plot(t,x,'k'), grid;

% Fourier Series 
N=50;
Ckw=zeros(size(t));
SFC=zeros(size(t));
w=2*pi/40;
 for k = 1:N
     Ckw=i*((-1)^((-15*k*w)/pi)-1)/(T*k*w); %coeficientii seriei fourier complexe 
     SFC=SFC+Ckw.*exp(j*k*w*t)*2+3/8*1/N; %Componenta continua = +3/8*1/N
 end 
 
 hold on,
 plot(t,SFC,'m'), title ("Functii"), xlabel("timp(secunde)")'
 legend(' Original ',' SFC');
 
figure
Ak(1)=Ak(51);
stem([0:N],Ak,'k'),grid, title("Spectru de amplitudini"), xlabel("frecventa w"), ylabel("Amplitudinea Ak");