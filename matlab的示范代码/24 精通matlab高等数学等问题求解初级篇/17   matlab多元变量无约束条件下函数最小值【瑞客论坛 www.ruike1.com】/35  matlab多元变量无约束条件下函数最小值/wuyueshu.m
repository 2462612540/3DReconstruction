%% ѧϰĿ�꣺��Ԫ������Լ�������µĺ�����Сֵ
% ͨ����ͼȷ��һ����ʼֵ��Ȼ����е����ҵ���������Сֵ��
clc
clear
[x,y]=meshgrid(-6:.5:6);
f= 8*x-4*y +x.^2+3*y.^2;
surfc(x,y,f)
x0=[0,0];
%[x,fval,exitflag]=fminunc(@(x)(8*x(1)-4*x(2) +x(1).^2+3*x(2).^2),x0)
 options=optimset('display','iter','Tolx',1e-8);
[x,fval,exitflag]=fminunc(@(x)(8*x(1)-4*x(2) +x(1).^2+3*x(2).^2),x0,options)
 [x_fminsearch,fval_fminsearch,exitflag]=fminsearch(@(x)(8*x(1)-4*x(2) +x(1).^2+3*x(2).^2),x0,options)
 %% ����QQ��1960009019
%% ΢�Ź��ںţ�����һƷ��
%% ����ţ����߽�������һƷ��
%% һ����Ѷ�ţ�����һƷ��