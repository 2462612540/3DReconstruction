%%  ������
clear all;
a=[6 6 6;7 7 4]
b=[1:4;3:6]
try
    c=a/b;
    d=a+b;
catch
    disp('����');
end

%%����QQ��1960009019
%%���߽���΢�Ź��ںţ�����һƷ��
%%����ţ����߽�������һƷ��
%%һ����Ѷ�ţ�����һƷ��
%% 
clear all;
while 1
    x=input('������һ��������');
    if x<=0
        error('�����ǣ�%d����������Ҫ��������',x);
    end
end
%%
clear all;
a=9;
if a>4
    warning('����%d����3',a);
    b=a
    warning('too  big','����%d����3',a);
end
