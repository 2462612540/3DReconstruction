%%  学习目标：各类二维图的绘制
%%   饼状图
clear all;
figure;
x=[0.2 0.3 0.2];
subplot(121);
pie(x)
subplot(122);
y=[0.1 0.2 0.3 0.2 0.2];
explode=[0 0 1 0 0];     %%  第三个突出
pie(y,explode);

%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%%  
%%   绘制直方图

clear all;
figure;
x=randn(500,1);    %标准正态分布
subplot(121);
hist(x);    %默认10个柱子
subplot(122);
y=randn(800,1);
hist(y,-4:0.1:4);   %
%%   散点图

clear all;
figure;
x=[1 3 4 7 9 10 15];
y=[5 3 5 9 7 3 7];
subplot(121);
scatter(x,y);
subplot(122);
scatter(x,y,[],[1 0 0],'fill')   %散点的颜色和填充
%%  火柴杆图

clear all;
x=0.1:0.5:5*pi;
y=sin(x);
figure;
stem(x,y,'r');
%% 
%% 阶梯图

clear all;
x=0.1:0.5:5*pi;
y=cos(x);
figure;
stairs(x,y,'r');
%% 
%%  绘制罗盘图

clear all;
x=[1 -3 5 -6 8 9];
y=[5 7 -9 12 15 -9];
figure;
compass(x,y,'r');		%绘制罗盘图
%%
%%  羽毛图

clear all;
x=[1 3 5 6 8 9];
y=[5 7 -9 3 -5 2];
figure;
feather(x,y);
%%　
%%   彗星图    动态的

clear all;
t=-pi:pi/100:pi;
y=tan(sin(t))-sin(tan(t));
comet(t,y);
%%  

%% 

