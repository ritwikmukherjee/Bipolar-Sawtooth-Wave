clc;
close all;
clear all;
c=input('Enter number of cycles');
x =[];
x1=[ones(1,5)];
x2=[ones(1,5)];

for i = 1:5
    x1(i) = (i)*x1(i);
end
for i= 1:5
    x2(i)=(i-6)*x2(i);
end
for i = 1:c
    if rem(i,2)==0
        x=horzcat(x,x2);
        
    else
        x=horzcat(x,0);
        x=horzcat(x,x1);
    end
    
end
n=[];
if rem(c,2)==0
    x=[x 0];
    n=1:1:5*(c)+floor((c+1)/2)+1;
else
    n=1:1:5*(c)+floor((c+1)/2);
end

    
stem(n-1,x);
xlabel('n');
ylabel('Amplitude');
title('Bipolar Sawtooth');
ylim([-6,6]);

