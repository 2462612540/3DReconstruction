
%%  ѧϰĿ�꣺matlab���ŷ��������������ʽ

clear all;
syms x;
A1=sym(magic(4))
Y1=inv(A1)       %�����
det(A1)          %����ʽ

A2=sym([4-x,x,x-4;x,x-4,x+4;x,x,4])
Y2=inv(A2)
det(A2)
%% ����QQ��1960009019
%% ΢�Ź��ں� �� ����һƷ��