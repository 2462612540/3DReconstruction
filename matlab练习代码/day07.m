%% 学习目标:使用MATLAB求解常微分方程 通解 特解 数值解
%% 求微分方程的通解
clear all;
f1=dsolve(' Dy-y=sin(x)');                                  %默认情况下以t为自变量求解求出的C2为积分常数
f2=dsolve(' Dy-y=sin(x)','x');                              %以x为自变量求解  因此在的这个时候需要的是的指定自变量的

%% 求微分方程的特解
clear all;
f3=dsolve(' Dy=a*y','y(0)=b')                            %求微分方程的特解

%% 求微分方程组
clear all;
z=dsolve('Dx=y', ' Dy=-x');                                %默认t为自变量 没有指定的值得x和y的值
z.x
z.y


%% 求解常微分方程的数值解
clear all;
close all;
options=odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-5]);%设置参数
[t,y]=ode45(@rigid,[0,12],[0 1 1],options);        %时间范围0到12，rigid是方程组，变量的初始值是0 1 1
%画图的表示
figure;
plot(t,y(:,1),'-',t,y(:,2),'--',t,y(:,3),':');
 xlabel('Time');
legend('y1','y2','y3');








