function [melco]=melanalysis_run(x,sampf)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% h is 1200 or 12000 and l ia 51

%%%%%x=double(sig);
% 
% %offset elimination
% m=mean(x);
% xoe=x-m;
% x=xoe;


% % Creating Gaussian window of size 20
%  g = gausswin(20);
%  % Apply convolution using Gaussian filter
%  g = g/sum(g);
%  y= conv(x(:,1), g, 'same');
%  % Apply signal smoothing using Savitzky-Golay smoothing filter.
%  result=sgolayfilt(y,1,17);
%  x=result;
%  
 %Normalization
z=abs(x);
xnorm=x/max(z);
x=xnorm;
 
%Zero padding
N=length(x);
p1=log2(N);
p2=ceil(p1);
N2=2^p2;
N3=N2-N;
zpa=padarray(x,[N3 0],0,'post');
%windowing
Nw=length(zpa);
hmw=hamming(Nw);
wsig=zpa.*hmw;
%computing fft
xk=fft(wsig);
fre=0:sampf/N2:sampf/2;
freq=fre;
sc1=xk(1:(N2/2)+1);
 sc=abs(sc1');
% Introducing lower and higher corner frequencies
 l=51;
h=12000;
%convert the upper and lower frequency value to mel scale
fml=1125*log(1+(l/700));
fmh=1125*log(1+(h/700));
%No of filterbanks be 20
 M=20;
 m=1:M;
%divide the range into intervals
 v=(fmh-fml)/(M+1);
vv=v*m;
 z=vv+fml;
%display(z);
 z1=z/1125;
 z1=exp(z1);
 z1=z1-1;
 f=z1*700;
% % % display(z1);
% %convert frequency into indices
fm=(N2/sampf)*f;
fl1=l*(N2/sampf);
fh1=h*(N2/sampf);
B=padarray(fm,[0 1],fl1,'pre');
B=padarray(B,[0 1],fh1,'post');
for i=2:length(B)-1
for j=1:length(sc)
if j<B(i-1)||j>B(i+1)
t=0;    
else
if j>=B(i-1)&&j<B(i)
t=(j-B(i-1))/(B(i)-B(i-1));
else
if j>=B(i)&&j<=B(i+1)
t=(B(i+1)-j)/(B(i+1)-B(i));
end
end
end
hmk(j)=t;
end
S(i-1)=log(sum((sc.^2).*hmk));
end
for n=1:M 
sum1=0;
for m=1:M
sum1=sum1+(S(m)*cos(pi*n*(m-0.5)/M));
end
C(n)=sum1; 
end
melco=C;
end
