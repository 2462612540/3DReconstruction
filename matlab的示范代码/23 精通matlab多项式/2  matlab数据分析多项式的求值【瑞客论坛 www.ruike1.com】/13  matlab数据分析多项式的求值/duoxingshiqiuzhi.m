%%   学习目标：多项式的求值
%%  多项式的求值

clc;
clear all;
p=[2 -3 -4];        %多项式的系数向量
x=1:6;
y=polyval(p,x)      %多项式在x处的值 以数组或矩阵中的元素为计算单位

%%  多项式求值的另一种函数，导致结果不一样

clc;
clear all;
x=[1 2 ;5 6];
p=[1 2 3];           % 多项式的系数向量
y1=polyvalm(p,x) %采用polyvalm( )函数，以矩阵为计算单位
x=[1 2 ;5 6];
p=[1 2 3];
y2=polyval(p,x) %采用polyval( )函数，以矩阵的元素为计算单位
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂