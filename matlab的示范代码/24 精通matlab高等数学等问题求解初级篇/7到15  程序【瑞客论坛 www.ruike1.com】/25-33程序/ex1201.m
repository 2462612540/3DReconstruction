%%   学习目标：介绍10种优化方法
%%   用Opt_Golden()求解最优化
f1201 = inline('x-(x.*x-2).^3/2','x');
a = 0;
b = 4; 
TolX = 1e-4;%判断循环是否停止的x阈值
TolFun = 1e-4; %函数阈值
MaxIter = 100; %设定迭代次数
[xo,fo] = Opt_Golden(f1201,a,b,TolX,TolFun,MaxIter)
%%   用插值法求解最优化问题
clear all
f1202=inline('(x.*x - 2).^2/2-1', 'x');;
%%%设定区间端点
a = 0;
b = 5;
%%%分别设定x阈值和函数f阈值
TolX = 1e-5; 
TolFun = 1e-8; 
%%%设定迭代次数
MaxIter = 100;
%%%用二次插值函数求解
[xoq,foq] = Opt_Quadratic(f1202,[a b],TolX,TolFun,MaxIter)
%用matlab内置函数求最小值以及它的函数值
[xob,fob] = fminbnd(f1202,a,b) %MATLAB 内置函数求解
%%   用Nelder-Mead方法求最优化解
f1203 = inline('x(1)*(x(1)-5-x(2))+x(2)*(x(2)-4)','x');
x0 = [0 4];
TolX = 1e-4; 
TolFun = 1e-9;
MaxIter = 100;
[xN,fN] = Opt_Nelder(f1203,x0,TolX,TolFun,MaxIter)
%取最小值点以及此处的最小值
[xF,fF] = fminsearch(f1203,x0) %用MATLAB内置函数fminsearch求解
%%   用最速下降法求最优化解
f1204 = inline('x(1)*(x(1)-5-x(2))+x(2)*(x(2)-4)','x');%目标函数
grad=inline('[2*x(1)-5-x(2),-x(1)+2*x(2)-4]','x'); %目标函数的梯度函数
x0 = [1 4];
TolX = 1e-4; 
TolFun = 1e-9;
MaxIter = 100;
dist0=1;
[xo,fo] = Opt_Steepest(f1204,grad,x0,TolX,TolFun,dist0,MaxIter)
%%   用牛顿法求最优化解
f1205 = inline('x(1)*(x(1)-5-x(2))+x(2)*(x(2)-4)','x');%目标函数
grad=inline('[2*x(1)-5-x(2),-x(1)+2*x(2)-4]','x'); %目标函数的梯度函数
x0 = [-8;-8]; 
options=optimset('TolX',1e-4,'TolFun',1e-9,'MaxIter',100);
xo = fsolve(grad,x0,options) %用fsolve求解非线性方程零点
yo=f1205(xo)
%%   用模拟退火法计算函数的最小值
clear all
f = inline('5*sin(x(1)*x(2))+x(1)^2+x(2)^2','x');
l = [-5 -5]; %下限
u = [5 5]; %上限
x0 = [-4 0];
TolFun = 1e-9;
TolX=1e-5;
kmax = 800;
%%%%用Nelder-Meat法求
[xo_nd,fo] = Opt_Nelder(f,x0,TolX,TolFun,kmax) 
 %%%%用matlab内置函数验证
[xos,fos] = fminsearch(f,x0)
[xou,fou] = fminunc(f,x0)
%%%%用模拟退火法求
 q =0.8;
[xo_sa,fo_sa] =Opt_Simu(f,x0,l,u,kmax,q,TolFun)
%%  遗传算法计算最优解
f = inline('x(1)^4-16*x(1)^2-5*x(1)*x(2)+x(2)^4-16*x(2)^2-5*x(2)','x');
l = [-5 -5]; %下限
u = [5 5]; %上限
x0 = [0 0];
Np = 30; %群体大小
Nb = [12 12]; %代表每个变量的二进制位数
Pc = 0.5;  %交叉概率
Pm = 0.01; %变异概率
eta = 0.8;   %学习率
kmax = 200; %最大迭代次数
[xos,fos]=fminsearch(f,x0)
[xo_gen,fo_gen] = genetic(f,x0,l,u,Np,Nb,Pc,Pm,eta,kmax)
%%   拉各朗日乘子法求最优化解
x=zeros(1,2);
%用syms表示出转化后的无约束函数
syms x y lama
f=x+y+lama*(x^2+y^2-2);
%分别求函数关于x、y、lama的偏导
dx=diff(f,x);
dy=diff(f,y);
dlama=diff(f,lama);
%令偏导为零求解x、y
xx=solve(dx,x); %将x表示为lama函数
yy=solve(dy,y);  %将y表示为lama函数
ff=subs(dlama,{x,y},{xx,yy}); %代入dlama得关于lama的一元函数
lamao=solve(ff); %求解得lamao
xo=subs(xx,lama,lamao) %求得取极值处的xo
yo=subs(yy,lama,lamao)  %取极值处的yo
fo=subs(f,{x,y,lama},{xo,yo,lamao}) %极值点函数值
%%  
%%   惩罚函数法求约束最优化问题
clear
f ='f1209';
x0=[3 0];
TolX = 1e-4; 
TolFun = 1e-9;
MaxIter=100;
alpha0 = 1;
%%%%选用不是基于梯度的无约束最优化方法求解，的正确结果
[xo_Nelder,fo_Nelder] = Opt_Nelder(f,x0,TolX,TolFun,MaxIter) %Nelder 方法
[fc_Nelder,fo_Nelder,co_Nelder] = f1209(xo_Nelder) %Nelder方法结果
[xo_s,fo_s] = fminsearch(f,x0) %MATLAB 内置函数fminsearch()
[fc_s,fo_s,co_s] = f1209(xo_s) %相应的结果
%%%基于梯度的方法最速下降法等，得到错误结果
grad=inline('[2*(x(1)+1)*((x(1)-1.2)^2+0.4*(x(2)-0.5)^2)+((x(1)+1)^2+4*(x(2)-1.5)^2)*2*(x(1)-1.2),8*(x(2)-1.5)*((x(1)-1.2)^2+0.4*(x(2)-0.5)^2)+((x(1)+1)^2+4*(x(2)-1.5)^2)*0.8*(x(2)-0.5)]','x');
xo_steep = Opt_Steepest(f,grad,x0,TolX,TolFun,alpha0) %最速下降法
[fc_steep,fo_steep,co_steep] = f1209(xo_steep) %相应结果
[xo_u,fo_u] = fminunc(f,x0); % MATLAB 内置函数fminunc()
[fc_u,fo_u,co_u] = f1209(xo_u) %相应结果
%%  
%%  用函数fmincon求约束最优化问题
clear all
f=inline('exp(x(1))*(4*x(1)^2+2*x(2)^2+4*x(1)*x(2)+2*x(2)+1)','x');
x0=[-1 1];
[x,fval]=fmincon(f,x0,[],[],[],[],[],[],'fcon1212')
%%   用fmincon解线性约束的最优化
clear all
f=inline('-x(1)*x(2)*x(3)','x');
A=[-1,-2,-2;1,2,2]; %A*x<=b
b=[0;72];
x0=[10;10;10];
[x,fval]=fmincon(f,x0,A,b)
%%  
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂