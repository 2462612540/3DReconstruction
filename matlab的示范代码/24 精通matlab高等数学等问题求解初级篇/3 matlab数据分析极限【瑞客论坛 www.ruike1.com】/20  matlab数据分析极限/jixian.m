
%%  ѧϰĿ�꣺  ����

clc;
clear all;
syms x;
f=(3*x^2-1)/(3*x^2-2*x+3);
y=limit(f,x,1)   %������1ʱ

% 
%%����QQ��1960009019
%%���߽���΢�Ź��ںţ�����һƷ��
%%����ţ����߽�������һƷ��
%%һ����Ѷ�ţ�����һƷ��


clc;
clear all;
syms x;
f=sin(sin(x))/x;
y=limit(f,x,0)    %������0
% 

clc;
clear all;
syms x;
f=(1+3/x)^(4*x);
y=limit(f,x,inf)   %�����������
%  
%�Ҽ���

clc;
clear all;
syms x;
f=((x^x)^x);
y=limit(f,x,0,'right')