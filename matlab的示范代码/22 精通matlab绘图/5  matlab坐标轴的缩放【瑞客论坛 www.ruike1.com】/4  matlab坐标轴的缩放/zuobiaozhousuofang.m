
%%  学习目标： 坐标轴的缩放
clear all;
t=0.01:0.01:2*pi;
figure;
subplot(121);
plot(t,sin(t));
axis([-5 10 -3 3]);
title('放大前');
subplot(122);
plot(t,sin(t));
axis([-5 10 -3 3]);
zoom on;      
title('放大后');
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%%  
clear all;
t=0.01:0.01:2*pi;
figure;
subplot(121);
plot(t,sin(t));
axis([-5 10 -3 3]);
title('放大前');
subplot(122);
plot(t,sin(t));
axis([-5 10 -3 3]);
zoom xon;
title('x轴放大后');
%%  