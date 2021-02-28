
%%  学习目标： 多项式的求导

clc;
clear all;
p1=[3 2 6];
p2=[3 3 2];
y1=polyder(p1);%对多项式p1求导 
y1=poly2sym(y1)
y2=polyder(p1,p2); %对多项式p1和p2的乘积求导
y2=poly2sym(y2)
[q,d]=polyder(p1,p2);%对多项式p1除以p2的商求导
q=poly2sym(q)       %分子
d=poly2sym(d)       %分母
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂
