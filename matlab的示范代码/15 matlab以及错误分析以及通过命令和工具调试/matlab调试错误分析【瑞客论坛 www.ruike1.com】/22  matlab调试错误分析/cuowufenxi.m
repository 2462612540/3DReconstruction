%%  错误处理
clear all;
a=[6 6 6;7 7 4]
b=[1:4;3:6]
try
    c=a/b;
    d=a+b;
catch
    disp('错误');
end

%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂
%% 
clear all;
while 1
    x=input('请输入一个正数：');
    if x<=0
        error('该数是：%d，不是我们要的正数！',x);
    end
end
%%
clear all;
a=9;
if a>4
    warning('该数%d大于3',a);
    b=a
    warning('too  big','该数%d大于3',a);
end
