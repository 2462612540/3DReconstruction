
%% 学习目标： MATLAB逻辑与流程控制
%%
% 1. if ... else ... end
A = rand(1,10)
limit = 0.5;
B = (A > limit);   % 
if any(B)
  fprintf('Indices of values > %4.2f: \n', limit);
  disp(find(B))
else
  disp('所有值都小于limit')
end
%%
% 2. for ... end
k = 5;
hilbert = zeros(k,k);      % 

for m = 1:k
    for n = 1:k
        hilbert(m,n) = 1/(m+n -1);
    end
end
hilbert
%% 
% 3. while ... end
n = 1;
nFactorial = 1;
while nFactorial < 1e50
    n = n + 1;
    nFactorial = nFactorial * n;
end
n
%%
% 4. switch ... case ... end
mynumber = input('输入一个数字:');

switch mynumber
    case -1
        disp('负1');
    case 0
        disp('0');
    case 1
        disp('正1');
    otherwise
        disp('其他值');
end
%%
%%  大仙QQ：1960009019
%%  在线教育微信公众号：大仙一品堂
%%  大鱼号：在线教育大仙一品堂
%%  一点资讯号：大仙一品堂



