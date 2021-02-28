%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂
%% 学习目标：matlab符号函数的图形绘制
%%  一元函数
clear all;
x=-2:0.1:4;
figure;
plot(x,humps(x));
title('plot');
figure;
fplot(@humps,[-2 4])     %更加光滑
title('fplot');

%% 
clear all;
figure;
fplot('[1/x,sin(x),cos(x)]',2*pi*[-1 1 -1 1]);
legend('1/x','sin(x)','cos(x)');

%%  
%% 极坐标绘图

clear all;
figure;
ezpolar('sin(8*t).*cos(8*t)',[0,pi]);
%% 
%% 符号函数的三维网格图

clear all;
figure;
ezmesh('x.*exp(x.^2-y.^2)');
%%  带有等值线的三维网格图

clear all;
figure;
ezmeshc('x.*exp(-5*x.^2-8*y.^2)');
%%  
%% 符号函数的等值线图

clear all;
figure;
ezcontour('x.*exp(-x.^2-y.^2)',[-3 3]);
%% 
%% 三维彩色曲面图

clear all;
figure;
ezsurf('x.*y.^3/(x.^2+y.^3)');
%%  带有等值线的三维彩色的曲面图

clear all;
figure;
ezsurfc('4*x.*exp(-4*x.^2 - 6*y.^2)');
%% 
