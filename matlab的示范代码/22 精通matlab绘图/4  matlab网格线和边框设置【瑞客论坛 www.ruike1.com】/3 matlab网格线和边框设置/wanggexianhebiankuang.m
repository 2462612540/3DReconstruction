
%%  学习目标：matlab网格线和边框设置

clear all;
t=0.01:0.01:2*pi;
figure;
plot(t,sin(t));
axis([0 2*pi -1 1]);
grid on;   %显示网格线
%%   
clear all;
t=0.01:0.01:2*pi;
figure;
plot(t,sin(t));
axis([0 2*pi -1 1]);
box off;       %关闭边框
%%  

%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂