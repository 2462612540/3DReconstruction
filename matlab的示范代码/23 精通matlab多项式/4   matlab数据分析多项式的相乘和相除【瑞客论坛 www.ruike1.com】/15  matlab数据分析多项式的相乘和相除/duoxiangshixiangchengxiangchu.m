%%   学习目标：多项式的相乘和相除
%%  多项式相乘

clc;
clear all;
p1=[6 3 0 7];               %缺少的幂次用0补齐   多项式系数
p2=[1 2 3];
y1=poly2sym(p1)
y2=poly2sym(p2)
p3=conv(p1,p2);             %多项式相乘   如果是两个向量相当于卷积
y=poly2sym(p3)              %显示
syms x                      %另一种方法
p1=sym2poly(3*x^3+3*x^2+8)
p2=sym2poly(6*x^2+3*x+4)
p3=conv(p1,p2);             %多项式相乘
y=poly2sym(p3)
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂
%%   多项式相除

clc;
clear all;
p1=[4 3 8 1 4];
p2=[2 3 1];
[q,r]=deconv(p1,p2);    %多项式p1除以p2
y1=poly2sym(q)          %商
y2=poly2sym(r)          %余数