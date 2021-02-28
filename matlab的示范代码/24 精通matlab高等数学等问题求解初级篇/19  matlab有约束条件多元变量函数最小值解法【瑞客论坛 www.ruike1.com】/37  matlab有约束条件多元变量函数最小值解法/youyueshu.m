%%  学习目标：有约束条件多元变量函数最小值
%   适合  计划生产盈利最大   的模式求解，
%   最大值解法可转化为求解最小值算法，非常容易
%   求最大值转化为求最小值  f=70*x1+120*x2  的最大值，当然x1,x2是有约束的。
%   转化为求  f=-(70*x1+120*x2)  的最小值。
%   约束条件：9*x1+4*x2<=3600;4*x1+5*x2<=2000;3*x1+10*x2<=3000;-x1,-x2<=0
clc
clear
       
       f=[-70 -120];
       A=[9 4;4 5;3 10];
       B=[3600;2000;3000];
       Aeq=[];  Beq=[];
       lb=[0 0];ub=[inf inf];
        x0=[1 1];
       options=optimset('display','iter','Tolx',1e-8);

     [x,f,exitflag]=linprog(f,A,B,Aeq,Beq,lb,ub,x0,options)
     %[xmincon,fval,exitflag,output] = fmincon(@(x)-(70*x(1)+120*x(2)),x0,A,B,Aeq,Beq,lb,ub,[],options)
    %% 大仙QQ：1960009019
%% 微信公众号：大仙一品堂
%% 大鱼号：在线教育大仙一品堂
%% 一点资讯号：大仙一品堂