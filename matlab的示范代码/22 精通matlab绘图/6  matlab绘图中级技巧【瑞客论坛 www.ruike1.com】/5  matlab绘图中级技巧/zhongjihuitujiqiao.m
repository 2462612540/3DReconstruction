%%  ѧϰĿ�꣺matlab��ͼ�м�����
%%  ͼ����ק

clear all;
t=0.01:0.01:2*pi;
figure;
plot(t,sin(t),'--r');
pan on;			%����ק����
%%  
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��
%% ���ݹ��
clear all;
t=0.01:0.01:2*pi;
figure;
plot(t,sin(t),'--r');
datacursormode on;    %��ȡ���ݵ�
%%  ����ֱ��
clear all;
x=0.1:0.8:2*pi;
y=sin(x);
figure;
line(x,y);
%%  �������ͼ
clear all;
x=0:0.02:2*pi;
y=sin(2*x).*cos(2*x);
figure;
polar(x,y,'--r');   %% ����  �뾶  ����
%%  
% ˫Y���ͼ
clear all;
x=0.1:0.1:2*pi;
y=sin(x);
z=10.^x;
figure;
plotyy(x,y,x,z);
%%  

