%%  ѧϰĿ�꣺�����άͼ�Ļ���
%%   ��״ͼ
clear all;
figure;
x=[0.2 0.3 0.2];
subplot(121);
pie(x)
subplot(122);
y=[0.1 0.2 0.3 0.2 0.2];
explode=[0 0 1 0 0];     %%  ������ͻ��
pie(y,explode);

%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��
%%  
%%   ����ֱ��ͼ

clear all;
figure;
x=randn(500,1);    %��׼��̬�ֲ�
subplot(121);
hist(x);    %Ĭ��10������
subplot(122);
y=randn(800,1);
hist(y,-4:0.1:4);   %
%%   ɢ��ͼ

clear all;
figure;
x=[1 3 4 7 9 10 15];
y=[5 3 5 9 7 3 7];
subplot(121);
scatter(x,y);
subplot(122);
scatter(x,y,[],[1 0 0],'fill')   %ɢ�����ɫ�����
%%  ����ͼ

clear all;
x=0.1:0.5:5*pi;
y=sin(x);
figure;
stem(x,y,'r');
%% 
%% ����ͼ

clear all;
x=0.1:0.5:5*pi;
y=cos(x);
figure;
stairs(x,y,'r');
%% 
%%  ��������ͼ

clear all;
x=[1 -3 5 -6 8 9];
y=[5 7 -9 12 15 -9];
figure;
compass(x,y,'r');		%��������ͼ
%%
%%  ��ëͼ

clear all;
x=[1 3 5 6 8 9];
y=[5 7 -9 3 -5 2];
figure;
feather(x,y);
%%��
%%   ����ͼ    ��̬��

clear all;
t=-pi:pi/100:pi;
y=tan(sin(t))-sin(tan(t));
comet(t,y);
%%  

%% 

