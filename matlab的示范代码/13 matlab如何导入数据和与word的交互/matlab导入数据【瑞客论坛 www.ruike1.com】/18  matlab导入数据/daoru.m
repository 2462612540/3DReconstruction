
%% ѧϰĿ�꣺MATLAB�ļ�����
%%
% 1. mat��ʽ
save data.mat x y1 y2
clear all
load data.mat
%%
% 2. txt��ʽ
M = importdata('myfile.txt');

S = M.data;
save 'data.txt' S -ascii
T = load('data.txt');

isequal(S, T)
%%
% 3. xls��ʽ
xlswrite('data.xls',S)
W = xlsread('data.xls');
isequal(S, W)

xlswrite('data.xlsx',S)
U = xlsread('data.xlsx');
isequal(S, U)
%% 
% 4. csv��ʽ
csvwrite('data.csv',S)
V = csvread('data.csv');
isequal(S, V)
%%  ����QQ��1960009019
%%  ���߽���΢�Ź��ںţ�����һƷ��
%%  ����ţ����߽�������һƷ��
%%  һ����Ѷ�ţ�����һƷ��
