
%%  学习目标：三维图的绘制
clear all;
x=-10:0.1:10;                   %绘图数据
y=-10:0.1:10;
[X,Y]=meshgrid(x,y);
z=X.^2+Y.^2;
figure;                         %图形窗口
surf(x,y,z);                    %三维图的绘制函数
view([55 75])                   %设置视角
colormap('cool');               %设置颜色
shading interp;
light('Position',[1 0.4 0.4]);  %设置光照
axis square;                    %坐标轴设置
xlabel('x');                    %图形标注
ylabel('y');
zlabel('z');
%% 
% 绘制三维曲线

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

% 绘制网格矩阵

clear all;
x=-2*pi:2*pi;
y=-2*pi:2*pi;
[X,Y]=meshgrid(x,y);			%产生矩形网格
figure;
plot(X,Y,'o');				%绘制网格数据
%% 
% 绘制三维网格图

clear all;
[X,Y]=meshgrid(-3:0.1:3);
Z=5*X.^2-Y.^2+3;
figure;
subplot(121);
plot3(X,Y,Z);				%绘制三维曲线图
subplot(122);
mesh(X,Y,Z);				%绘制三维网格图
xlabel('x');
ylabel('y');
zlabel('z'); 
% 绘制三维饼图

clear all;
x=[0.2 0.1 0.25 0.15 0.16];
y=[3 5.5 7 10.5 8.5];
figure;
subplot(121);
pie3(x)					%绘制三维饼图
subplot(122);
explode=[0 0 0 1 0];
pie3(y,explode);			%绘制三维饼图

% 绘制三维散点图

clear all;
x=rand(1,20);
y=rand(1,20);
z=x+y;
figure;
subplot(121);
scatter3(x,y,z)				%绘制三维散点图
subplot(122);
scatter3(x,y,z,'r','filled'); 		%绘制三维散点图
%%  绘制三维火柴杆图

clear all;
x=rand(1,20);
y=rand(1,20);
z=x+y;
figure;
subplot(121);
stem3(x,y,z)			%绘制三维火柴杆图
subplot(122);
stem3(x,y,z,'r','filled'); 	%绘制三维火柴杆图
%% 绘制三维彗星图

clear all;
t=-pi:pi/400:pi;
x=sin(5*t);
y=cos(3*t);
z=t;
figure(15);
comet3(x,y,z);		%绘制三维彗星图
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂