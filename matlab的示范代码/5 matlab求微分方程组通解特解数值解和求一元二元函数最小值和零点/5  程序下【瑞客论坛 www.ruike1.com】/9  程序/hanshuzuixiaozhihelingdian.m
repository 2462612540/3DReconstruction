%% ѧϰĿ�꣺��һԪ������Сֵ�����
%%  �����ļ�Сֵ�����    ���һԪ��������Сֵ
clear all;
close all;
[x,fval]=fminbnd(@cos,1,5)    %������� 
y=cos(x)
%%        ����Ա�����Χ�޶���һԪ��������Сֵ
clear all;
close all;
f=@(x)x.^2-6*x-9;
[x,fval]=fminbnd(f,0,6,optimset('Display','iter'))     
%�Ա�����0��6֮�����Сֵ����ʾ�������
y=f(x)
%%    ���Ԫ��������Сֵ
clear all;
close all;
f=@(x)2*(x(2)-x(1)^2)^2+(2-x(1))^2;
[x,fval]=fminsearch(f,[-6.7 8])     %ָ��һ����ʼ��  ��ĳ�㸽��Ѱ��
y=f(x)
%%   ���һԪ���������
clear all;
close all;
f=@(x)sin(x)*cos(x);
figure;
fplot(f,[-5,5]);
xlabel('x');
ylabel('f(x)');
grid on;
x1=fzero(f,[-4,-2])
x3=fzero(f,-2)
[x4,fval]=fzero(f,[-3,-1])

%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��
%%    2018/3/17  ¼�ƣ���ӭָ��
