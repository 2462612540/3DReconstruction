%%  提高程序性能
%%   ctrl   +  c  可以中断大型程序的执行
%%  避免使用循环
%%  尽量用向量

%%  求矩阵的最大值
clear all;
x=rand(3,4,5);
tic;
m=x(1,1,1);
for i=1:3
    for j=1:4
        for k=1:5
            if x(i,j,k)>m
                m=x(i,j,k);
            end
        end
    end
end
m
t=toc     %程序运行时间

%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂
%%  
%%　　改进

clear all;
x=rand(3,4,5);
tic;
switch ndims(x)   %% 获取矩阵的维数
    case 2
        m=max(max(x));
    case 3
        m=max(max(max(x)));
end
m
t=toc
%%   在改进 
clear all;
x=rand(3,4,5);
tic;
m=max(x(:))
t=toc
%% 
%%  源程序
clear all;
tic;
m=0;
for i=1:10000
    m=m+1/i^2;    
end
m
t=toc
%%  变成向量代替循环
clear all;
tic;
m=0;
i=1:10000;
m=sum(1./i.^2);
m
t=toc
%%  还没有改进的源程序
clear all;
tic;
for i=1:20000
    for j=1:5
        H(j,i)=1/(i+j-1);
    end
end
toc
%%　　最外层循环次数少

clear all;
tic;
for i=1:5
    for j=1:20000
        H(i,j)=1/(i+j-1);
    end
end
toc
%%  事先给出矩阵的维数

clear all;
tic;
H=zeros(5,20000);
for i=1:5
    for j=1:20000
        H(i,j)=1/(i+j-1);
    end
end
toc

