
%% 学习目标：MATLAB子图绘制和坐标轴控制

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
axis      %%  设置坐标轴  获取当前坐标轴
%%　
clear all;
t=0.01:0.01:pi;
figure;
plot(sin(t),cos(t));
axis([-1 1 -2 2]);      %%  设置坐标轴显示范围
%%　
clear all;
t=0.01:0.01:pi;
figure;
plot(sin(t),cos(t));
axis off   %%取消坐标轴的显示
%%  

%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂