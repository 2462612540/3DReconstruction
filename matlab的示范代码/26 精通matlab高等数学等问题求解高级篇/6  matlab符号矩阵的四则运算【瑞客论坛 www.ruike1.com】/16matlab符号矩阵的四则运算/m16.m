
%%  ѧϰĿ�꣺matlab���ž������������

clear all;
syms x;
A1=sym('[1/6 2/6 6;6 6/7 6;6.4 6 6]')
B1=sym(magic(3))
C1=A1+B1
C2=A1-B1
C3=A1+8
D1=A1*B1
D2=A1*6

%%  ������ҳ�
clear all;
syms x;
A=sym('[5 5 5;3 6 3;7 7 7]')
B=sym(magic(3))
C1=A\B                         %���
D1=B/A                         %�ҳ�

%% ����QQ��1960009019
%% ΢�Ź��ں� �� ����һƷ��