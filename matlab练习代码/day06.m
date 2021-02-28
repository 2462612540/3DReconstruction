%% 学会求解的积分
%% quad 函数求积分 单变量的数值积分求解 一重积分
clear all
syms x;
f=inline('1./(sin(x)+exp(-x.^2))');                       %内联函数
y=quad(f,0,1.1);                                                 %quad(函数 ，积分初始值值，积分末位值)  表示的 积分函数在0-1.1的积分值


%% 调用的函数的函数文件
y1=quad(@funtest,0,1.1);                                  %采用的是函数句柄  调用的其他的函数文件
y2=quad(@funtest,0,1.1,1.e-10);                       %精度


%% quadl 精度更高 速度更快
clear all
syms x;
f=inline('1./(sin(x)+exp(-x.^2))'); 
y=quadl(f,0,1.1);  
y2=quadl(f,0,1.1,1.e-20);


%% 求解的是双重积分的值(二重积分)
clear all
syms x;
f=inline('x*cos(y)+y*sin(x)','x','y');                      
y=dblquad(f,pi,2*pi,0,pi);                                   %这是一种书写函数的形式
y1=dblquad(@integrnd,pi,2*pi,0,pi);                 %这是的调用的函数句柄的性形式


%% 求解三重的积分值
clear all;
f=inline('z*cos(x)+y*sin(x)', 'x','y','z');
q=triplequad(f,0, pi,0,1,-1,1);

q1=triplequad(@fun3 , 0,pi,0,1,-1,1);
q2=triplequad(@fun3,0, pi,0,1,-1,1,1.e-10)
q3=triplequad(@fun3 ,0, pi,0,1,-1,1,1.e-10,@quad);

