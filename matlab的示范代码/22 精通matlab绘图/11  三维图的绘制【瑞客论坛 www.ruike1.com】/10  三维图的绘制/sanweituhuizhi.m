
%%  ѧϰĿ�꣺��άͼ�Ļ���
clear all;
x=-10:0.1:10;                   %��ͼ����
y=-10:0.1:10;
[X,Y]=meshgrid(x,y);
z=X.^2+Y.^2;
figure;                         %ͼ�δ���
surf(x,y,z);                    %��άͼ�Ļ��ƺ���
view([55 75])                   %�����ӽ�
colormap('cool');               %������ɫ
shading interp;
light('Position',[1 0.4 0.4]);  %���ù���
axis square;                    %����������
xlabel('x');                    %ͼ�α�ע
ylabel('y');
zlabel('z');
%% 
% ������ά����

clear all;
t=linspace(0,20*pi, 500);
x=t.*sin(t);
y=t.*cos(t);
z=t;
figure;
plot3(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
%%  

% �����������

clear all;
x=-2*pi:2*pi;
y=-2*pi:2*pi;
[X,Y]=meshgrid(x,y);			%������������
figure;
plot(X,Y,'o');				%������������
%% 
% ������ά����ͼ

clear all;
[X,Y]=meshgrid(-3:0.1:3);
Z=5*X.^2-Y.^2+3;
figure;
subplot(121);
plot3(X,Y,Z);				%������ά����ͼ
subplot(122);
mesh(X,Y,Z);				%������ά����ͼ
xlabel('x');
ylabel('y');
zlabel('z'); 
% ������ά��ͼ

clear all;
x=[0.2 0.1 0.25 0.15 0.16];
y=[3 5.5 7 10.5 8.5];
figure;
subplot(121);
pie3(x)					%������ά��ͼ
subplot(122);
explode=[0 0 0 1 0];
pie3(y,explode);			%������ά��ͼ

% ������άɢ��ͼ

clear all;
x=rand(1,20);
y=rand(1,20);
z=x+y;
figure;
subplot(121);
scatter3(x,y,z)				%������άɢ��ͼ
subplot(122);
scatter3(x,y,z,'r','filled'); 		%������άɢ��ͼ
%%  ������ά����ͼ

clear all;
x=rand(1,20);
y=rand(1,20);
z=x+y;
figure;
subplot(121);
stem3(x,y,z)			%������ά����ͼ
subplot(122);
stem3(x,y,z,'r','filled'); 	%������ά����ͼ
%% ������ά����ͼ

clear all;
t=-pi:pi/400:pi;
x=sin(5*t);
y=cos(3*t);
z=t;
figure(15);
comet3(x,y,z);		%������ά����ͼ
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��