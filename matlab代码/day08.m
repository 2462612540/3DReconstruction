%% 学习目标:求一元函数最小值和零点%%函数的极小值和零点
%求解一元函数的最小值
clear all;
close all;
[x, fval]=fminbnd (@cos,1,5);                             %函数句柄
y=cos(x)

%% 求解自变量范围限定的一元函数的最小值
clear all;
close all;
f=@(x)x.^2-6*x-9;                                              %这个函数是x.^2-6*x-9
[x, fval]= fminbnd(f,0,6);                                     %自变量在0到2之间的最小值，显示计算过程
y=f(x);

%% 求多元函数的最小值
clear all;
close all;
f=@(x)2*(x (2)-x(1)^2)^2+(2-x(1))^2;
[x,fval]=fminsearch(f,[-6.7 8]);                            %指定一个起始点在某点附近寻找  [-6.7 8]表示的x y的初始值
y=f(x);

%% 求解一元函数的零点
clear all;
close all;
f=@(x)sin(x)*cos(x);

figure;
fplot(f,[-5,5]);
xlabel('x');
ylabel('f(x)');
grid on;
x1=fzero(f,[-4,-2]);                                              %表示的-4 -2之间求解零点的结果
x2=fzero(f,-2);                                                    %表示的-2附近求解零点的结果
[x3,fval]=fzero(f,[-3-1]);



