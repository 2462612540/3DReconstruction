
%% ѧϰĿ�꣺ MATLAB�߼������̿���
%%
% 1. if ... else ... end
A = rand(1,10)
limit = 0.5;
B = (A > limit);   % 
if any(B)
  fprintf('Indices of values > %4.2f: \n', limit);
  disp(find(B))
else
  disp('����ֵ��С��limit')
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
mynumber = input('����һ������:');

switch mynumber
    case -1
        disp('��1');
    case 0
        disp('0');
    case 1
        disp('��1');
    otherwise
        disp('����ֵ');
end
%%
%%  ����QQ��1960009019
%%  ���߽���΢�Ź��ںţ�����һƷ��
%%  ����ţ����߽�������һƷ��
%%  һ����Ѷ�ţ�����һƷ��



