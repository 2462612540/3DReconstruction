%% 学习目标：使用MATLAB求解常微分方程  通解  特解  数值解
%%  求微分方程的通解
clear all;
f1=dsolve('Dy-y=sin(x)')     %默认情况下以t为自变量求解   求出的C2为积分常数
f2=dsolve('Dy-y=sin(x)','x')       % 以x为自变量求解     
%%  求微分方程的特解
clear all;
dsolve('Dy=a*y','y(0)=b')          %求微分方程的特解
%%  求微分方程组
clear all;
z=dsolve('Dx=y','Dy=-x')            %  默认t为自变量
z.x
z.y
%%  求解常微分方程组的数值解
clear all;
close all;
options=odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-5]);    %设置参数
[t,y]=ode45(@rigid,[0 12],[0 1 1],options); 
%  时间范围0到12，rigid是方程组，变量的初始值是 0 1 1 
figure;
plot(t,y(:,1),'-',t,y(:,2),'--',t,y(:,3),':');
xlabel('Time');
legend('y1','y2','y3');
%  odeset  结构体
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%%    2018/3/17  录制，欢迎指正