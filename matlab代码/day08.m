%% ѧϰĿ��:��һԪ������Сֵ�����%%�����ļ�Сֵ�����
%���һԪ��������Сֵ
clear all;
close all;
[x, fval]=fminbnd (@cos,1,5);                             %�������
y=cos(x)

%% ����Ա�����Χ�޶���һԪ��������Сֵ
clear all;
close all;
f=@(x)x.^2-6*x-9;                                              %���������x.^2-6*x-9
[x, fval]= fminbnd(f,0,6);                                     %�Ա�����0��2֮�����Сֵ����ʾ�������
y=f(x);

%% ���Ԫ��������Сֵ
clear all;
close all;
f=@(x)2*(x (2)-x(1)^2)^2+(2-x(1))^2;
[x,fval]=fminsearch(f,[-6.7 8]);                            %ָ��һ����ʼ����ĳ�㸽��Ѱ��  [-6.7 8]��ʾ��x y�ĳ�ʼֵ
y=f(x);

%% ���һԪ���������
clear all;
close all;
f=@(x)sin(x)*cos(x);

figure;
fplot(f,[-5,5]);
xlabel('x');
ylabel('f(x)');
grid on;
x1=fzero(f,[-4,-2]);                                              %��ʾ��-4 -2֮��������Ľ��
x2=fzero(f,-2);                                                    %��ʾ��-2����������Ľ��
[x3,fval]=fzero(f,[-3-1]);



