
%% ѧϰĿ�꣺MATLAB��ͼ���ƺ����������

clear all;
x=-pi:pi/20:pi;
figure;
subplot(2,1,1);
plot(x,sin(x),'r--');
subplot(212);
plot(x,cos(x),'b:*');
%%  
clear all;
x=-pi:pi/20:pi;
figure;
subplot(2,2,1);
plot(x,sin(x),'r--');
subplot(223);
plot(x,cos(x),'b:*');
subplot(2,2,[2 4]);
plot(x,sin(x)+cos(x),'b-.^');
%%  
clear all;
t=0.01:0.01:pi;
figure;
plot(sin(t),cos(t));
axis      %%  ����������  ��ȡ��ǰ������
%%��
clear all;
t=0.01:0.01:pi;
figure;
plot(sin(t),cos(t));
axis([-1 1 -2 2]);      %%  ������������ʾ��Χ
%%��
clear all;
t=0.01:0.01:pi;
figure;
plot(sin(t),cos(t));
axis off   %%ȡ�����������ʾ
%%  

%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��