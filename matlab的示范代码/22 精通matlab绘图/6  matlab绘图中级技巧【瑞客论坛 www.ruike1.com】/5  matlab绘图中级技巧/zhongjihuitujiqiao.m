%%  学习目标：matlab绘图中级技巧
%%  图的拖拽

clear all;
t=0.01:0.01:2*pi;
figure;
plot(t,sin(t),'--r');
pan on;			%打开拖拽功能
%%  
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%% 数据光标
clear all;
t=0.01:0.01:2*pi;
figure;
plot(t,sin(t),'--r');
datacursormode on;    %获取数据点
%%  绘制直线
clear all;
x=0.1:0.8:2*pi;
y=sin(x);
figure;
line(x,y);
%%  极坐标绘图
clear all;
x=0:0.02:2*pi;
y=sin(2*x).*cos(2*x);
figure;
polar(x,y,'--r');   %% 弧度  半径  线型
%%  
% 双Y轴绘图
clear all;
x=0.1:0.1:2*pi;
y=sin(x);
z=10.^x;
figure;
plotyy(x,y,x,z);
%%  

