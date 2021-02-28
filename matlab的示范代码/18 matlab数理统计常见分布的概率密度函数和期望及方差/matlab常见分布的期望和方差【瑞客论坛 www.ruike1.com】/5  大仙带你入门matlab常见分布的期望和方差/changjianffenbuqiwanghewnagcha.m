
%%  常见分布的期望和方差
%% 　二项分布的期望和方差
clear all;
n1=100;
p1=0.3;
[m1,v1]=binostat(n1,p1) %100*0.3   100*0.3*0.7

%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%% 
%% 均匀分布的期望和方差

clear all;
a1=1;
b1=5;
[m1,v1]=unifstat(a1,b1)

%%  正态分布的期望和方差

clear all;
n1=2;
n2=3;
[m1,v1]=normstat(n1,n2)

%%
%%  指数分布的期望和方差

clear all;
mu1=2;
[m1,v1]=expstat(mu1)

%% 
%%  t分布的期望和方差

clear all;
n1=4;
[m1,v1]=tstat(n1)

%%　
%% F分布的期望和方差

clear all;
n1=6;
n2=8;
[m1,v1]=fstat(n1,n2)

%%  


