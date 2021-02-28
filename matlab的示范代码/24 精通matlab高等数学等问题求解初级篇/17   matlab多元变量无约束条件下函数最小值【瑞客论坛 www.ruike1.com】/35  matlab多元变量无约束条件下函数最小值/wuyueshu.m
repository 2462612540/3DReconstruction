%% 学习目标：多元变量无约束条件下的函数最小值
% 通过绘图确定一个初始值；然后进行迭代找到真正的最小值；
clc
clear
[x,y]=meshgrid(-6:.5:6);
f= 8*x-4*y +x.^2+3*y.^2;
surfc(x,y,f)
x0=[0,0];
%[x,fval,exitflag]=fminunc(@(x)(8*x(1)-4*x(2) +x(1).^2+3*x(2).^2),x0)
 options=optimset('display','iter','Tolx',1e-8);
[x,fval,exitflag]=fminunc(@(x)(8*x(1)-4*x(2) +x(1).^2+3*x(2).^2),x0,options)
 [x_fminsearch,fval_fminsearch,exitflag]=fminsearch(@(x)(8*x(1)-4*x(2) +x(1).^2+3*x(2).^2),x0,options)
 %% 大仙QQ：1960009019
%% 微信公众号：大仙一品堂
%% 大鱼号：在线教育大仙一品堂
%% 一点资讯号：大仙一品堂