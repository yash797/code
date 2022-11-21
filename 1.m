clear all;
pkg load statistics

%Gaussian Distribution Function

x=-5:0.5:5;
y=normpdf(x,0,1);
subplot(1,3,1);
plot(x,y);
axis([-5,5,0,1]);
title("mean 0 sd =1");
x=-5:0.5:5;
y=normpdf(x,0,0.5)
subplot(1,3,2)
plot(x,y)
axis([-5 5 0 1])
title('mean=0, std dev=0.5')
x=-5:0.5:5;
y=normpdf(x,1,1)
subplot(1,3,3)
plot(x,y)
axis([-5 5 0 1])
title('mean=1, std dev=1')

%PSD and Autocorrelation of Random Process

y=normrnd(0,1,1,200);
Gy=periodogram(y);
Ry=abs(ifft(Gy,256));
Ry=[Ry(130:256)' Ry(1:129)']
t=-127:1:128;
subplot(1,2,1)
plot(Gy)
xlabel('frequencysamples');
title('PSD')
subplot(1,2,2)
plot(t,Ry)
xlabel('time shift')
title('autocorrelation')