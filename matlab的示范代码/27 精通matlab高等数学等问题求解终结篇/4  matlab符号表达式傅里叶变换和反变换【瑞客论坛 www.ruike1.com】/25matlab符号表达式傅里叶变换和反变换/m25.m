%% ����QQ��1960009019
%% ΢�Ź��ں� �� ����һƷ��
%% ѧϰĿ�꣺matlab���ű��ʽ����Ҷ�任�ͷ��任

clear all;
syms t;
F1=fourier(1/t)

%%  ��

clear all;
syms u v w x;
f1=ifourier(w*exp(-3*w)*sym('heaviside(w)'))

%%  
