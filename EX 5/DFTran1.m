%Author- Mrigakshi Pandey (2015UEC1380)
% DFT
%.......................................

close all;
clear all;
clc;

x=input('Input the Vector: ');
a=length(x);
N=a;
subplot(3,1,1)
stem(x);
xlabel('index->');
ylabel('value->');
title('Given Vector');

for k=0:1:N-1
    for n=0:1:N-1
        A(k+1,n+1)=conj(exp(-1*i*2*pi*k*n/N));
    end
end

X=(A*x')'
subplot(3,1,2)
stem(abs(X));
xlabel('index->');
ylabel('value->');
title('DFT by program');

B=fft(x,N)
subplot(3,1,3)
stem(abs(B));
xlabel('index->');
ylabel('value->');
title('DFT by Inbuilt function');

