%Author- Mrigakshi Pandey (2015UEC1380)
% IDFT
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
        A(k+1,n+1)=conj(exp(i*2*pi*k*n/N))/N;
    end
end

X=(A*x')'
subplot(3,1,2)
stem(abs(X));
xlabel('index->');
ylabel('value->');
title('IDFT by program');

B=ifft(x,N)
subplot(3,1,3)
stem(abs(B));
xlabel('index->');
ylabel('value->');
title('IDFT by Inbuilt function');

%dim = [0.11 0.081 0 0];
%str = {'Generated by:','Mrigakshi Pandey (2015UEC1380)'};
%annotation('textbox',dim,'String',str,'FitBoxToText','on');