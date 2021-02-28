
%%  学习目标：  极限

clc;
clear all;
syms x;
f=(3*x^2-1)/(3*x^2-2*x+3);
y=limit(f,x,1)   %趋近于1时

% 
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂


clc;
clear all;
syms x;
f=sin(sin(x))/x;
y=limit(f,x,0)    %趋近于0
% 

clc;
clear all;
syms x;
f=(1+3/x)^(4*x);
y=limit(f,x,inf)   %趋近于无穷大
%  
%右极限

clc;
clear all;
syms x;
f=((x^x)^x);
y=limit(f,x,0,'right')