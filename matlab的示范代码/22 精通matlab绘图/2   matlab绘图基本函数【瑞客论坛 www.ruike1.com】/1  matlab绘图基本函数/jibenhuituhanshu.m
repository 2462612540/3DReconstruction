
%%  学习目标：MATLAB基本绘图函数
clear all;
t=0.1:0.02:2*pi;      %自变量范围
figure;
plot(t,sin(t),'r:');  %红色
hold on;
plot(t,cos(t));     %%绘制
xlabel('x');        %%横坐标标签 
ylabel('y');        %%纵坐标标签
title('plot');      %%题目
%% 
clear all;
y=magic(4);  %%4行4列的矩阵
figure;
plot(y);      %对每一列绘制一条线，那就是4条，每条4个点，默认颜色不同
%% 
clear all;
x=0:0.1:16;
y=sin(x);
figure;
plot(x,y);
%%  
clear all;
x=1:4;
y=magic(4);
figure;
plot(x,y);
%%  
clear all;
x=0.01:0.1:2*pi;
y=cos(x+0.7)+5;
figure;
plot(x,y,'r-.*');     %红色，线型
%%  
clear all;
x=0.01:0.2:6*pi;
y=cos(x);
figure;
plot(x,y,'g:^');
%%  
clear all;
x=-pi:pi/20:pi;
y=tan(sin(x))-sin(tan(x));
plot(x,y,'--rs','LineWidth',1,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',4);
%%  同时绘制多条曲线

clear all;
x=-pi:pi/20:pi;
y=sin(x);
z=cos(x);
figure;
plot(x,y,'r:*',x,z,'g-.v');
%%  
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂