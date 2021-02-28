%%  学习目标：插值
%%   一维多项式插值

clc;
clear all;
x=0:0.2:2;
y=(x.^2-3*x+5).*exp(-3*x).*sin(x);
xi=0:0.03:2;                            %要插值的数据
yi_nearest=interp1(x,y,xi,'nearest');   %临近点插值
yi_linear=interp1(x,y,xi);              %默认为线性插值
yi_spine=interp1(x,y,xi,'spine');       %三次样条插值
yi_pchip=interp1(x,y,xi,'pchip');       %分段三次Hermite插值
yi_v5cubic=interp1(x,y,xi,'v5cubic');   %MATLAB5中三次多项式插值
figure;                                 %画图显示
hold on;
subplot(231);
plot(x,y,'ro');
title('已知数据点');
subplot(232);
plot(x,y,'ro',xi,yi_nearest,'b-');
title('临近点插值');
subplot(233);
plot(x,y,'ro',xi,yi_linear,'b-');
title('线性插值');
subplot(234);
plot(x,y,'ro',xi,yi_spine,'b-');
title('三次样条插值');
subplot(235);
plot(x,y,'ro',xi,yi_pchip,'b-');
title('分段三次Hermite插值');
subplot(236);
plot(x,y,'ro',xi,yi_v5cubic,'b-');
title('MATLAB5中三次多项式插值');
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂
%% 采用一维快速傅立叶插值

clc;
clear all;
x=0:1.1:8;
y=sin(x);
n=2*length(x);  %增采样1倍
yi=interpft(y,n);%采用一维快速傅立叶插值
xi=0:0.55:8.3;%要插值的数据
figure;%画图显示
hold on;
plot(x,y,'ro',xi,yi,'b-');
legend('原始数据','插值后结果');
%%  三次样条插值

clc;
clear all;
x=0:10;%原始数据
y=sin(x);
xi=0:.25:10;%插值数据
yi=spline(x,y,xi);%三次样条插值
pp=spline(x,y);%产生插值函数
y1=ppval(pp,xi); %结果相同y1=yi
y2=interp1(x,y,xi,'spline'); %结果相同y2=yi
figure;%画图显示
plot(x,y,'o',xi,yi);
legend('原始数据','三次样条插值');
