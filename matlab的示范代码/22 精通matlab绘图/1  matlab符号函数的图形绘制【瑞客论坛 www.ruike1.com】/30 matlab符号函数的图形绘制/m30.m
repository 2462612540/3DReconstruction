%% ����QQ��1960009019
%% ΢�Ź��ں� �� ����һƷ��
%% ѧϰĿ�꣺matlab���ź�����ͼ�λ���
%%  һԪ����
clear all;
x=-2:0.1:4;
figure;
plot(x,humps(x));
title('plot');
figure;
fplot(@humps,[-2 4])     %���ӹ⻬
title('fplot');

%% 
clear all;
figure;
fplot('[1/x,sin(x),cos(x)]',2*pi*[-1 1 -1 1]);
legend('1/x','sin(x)','cos(x)');

%%  
%% �������ͼ

clear all;
figure;
ezpolar('sin(8*t).*cos(8*t)',[0,pi]);
%% 
%% ���ź�������ά����ͼ

clear all;
figure;
ezmesh('x.*exp(x.^2-y.^2)');
%%  ���е�ֵ�ߵ���ά����ͼ

clear all;
figure;
ezmeshc('x.*exp(-5*x.^2-8*y.^2)');
%%  
%% ���ź����ĵ�ֵ��ͼ

clear all;
figure;
ezcontour('x.*exp(-x.^2-y.^2)',[-3 3]);
%% 
%% ��ά��ɫ����ͼ

clear all;
figure;
ezsurf('x.*y.^3/(x.^2+y.^3)');
%%  ���е�ֵ�ߵ���ά��ɫ������ͼ

clear all;
figure;
ezsurfc('4*x.*exp(-4*x.^2 - 6*y.^2)');
%% 
