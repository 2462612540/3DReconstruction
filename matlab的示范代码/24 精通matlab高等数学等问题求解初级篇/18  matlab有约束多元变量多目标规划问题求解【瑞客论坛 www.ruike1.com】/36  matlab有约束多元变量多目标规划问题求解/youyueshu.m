%%   ѧϰĿ�꣺��Լ����Ԫ������Ŀ��滮�������
clc
clear
fun='[2*x(1)+5*x(2),4*x(1)+x(2)]';
      
goal=[20,12];
weight=[20,12];
x0=[2,2];
A=[1 0; 0 1;-1 -1];
b=[5 6 -7];
lb=[0 0];ub=[inf inf];
[x,fval,attainfactor,exitflag]=fgoalattain(fun,x0,goal,weight,A,b,[],[],lb,ub)

 %% ����QQ��1960009019
%% ΢�Ź��ںţ�����һƷ��
%% ����ţ����߽�������һƷ��
%% һ����Ѷ�ţ�����һƷ��