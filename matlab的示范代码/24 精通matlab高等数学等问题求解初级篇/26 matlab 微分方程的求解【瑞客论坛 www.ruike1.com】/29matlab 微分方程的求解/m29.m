%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂
%% 学习目标：matlab 微分方程的求解

clear all;
dsolve('Dx=-a*x')
dsolve('Dx=-a*x','x(0)=1')    %初始条件
%% 二阶

clear all;
g1=dsolve('D2y=-a^2*y')
g2=dsolve('D2y=-a^2*y','y(0)=1')
g3=dsolve('D2y=-a^2*y','y(0)=1','y(pi)=1')
%%  微分方程组   

clear all;  
[x1,y1]=dsolve('Dx=y','Dy=-x','t')     %自变量为t
[x2,y2]=dsolve('Dx=y','Dy=-x','x(0)=3','y(0)=4','t')