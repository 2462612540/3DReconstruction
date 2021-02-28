%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂
%% 学习目标：matlab符号表达式傅里叶变换和反变换

clear all;
syms t;
F1=fourier(1/t)

%%  反

clear all;
syms u v w x;
f1=ifourier(w*exp(-3*w)*sym('heaviside(w)'))

%%  
