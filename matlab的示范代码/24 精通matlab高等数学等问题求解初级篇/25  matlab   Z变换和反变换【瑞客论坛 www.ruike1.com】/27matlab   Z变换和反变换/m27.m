%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂
%% 学习目标：matlab   Z变换和反变换

clear all;
syms k n w z;
f1=ztrans(2^n)

%%  反

clear all;
syms x k n w z;
f1=iztrans(z/(z-2))
