%%  用lsqnonlin求解最小二乘问题
clear all
x0 = [0.3 0.4];                        % 初值点
[x,resnorm] = lsqnonlin(@f1211,x0)     % 调用最优化函数求  x  和  平方和残差
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂