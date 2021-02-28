
%% 学习目标：MATLAB文件导入
%%
% 1. mat格式
save data.mat x y1 y2
clear all
load data.mat
%%
% 2. txt格式
M = importdata('myfile.txt');

S = M.data;
save 'data.txt' S -ascii
T = load('data.txt');

isequal(S, T)
%%
% 3. xls格式
xlswrite('data.xls',S)
W = xlsread('data.xls');
isequal(S, W)

xlswrite('data.xlsx',S)
U = xlsread('data.xlsx');
isequal(S, U)
%% 
% 4. csv格式
csvwrite('data.csv',S)
V = csvread('data.csv');
isequal(S, V)
%%  大仙QQ：1960009019
%%  在线教育微信公众号：大仙一品堂
%%  大鱼号：在线教育大仙一品堂
%%  一点资讯号：大仙一品堂
