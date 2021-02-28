
%%  学习目标：掌握高级的矩阵知识
%%  逆矩阵和广义逆矩阵
clear all;
A=magic(4)
B=[2 4;6 4]      
C=inv(A)
inv(B)
D=pinv(B)     
B*D*B
%%   求矩阵的秩   跟线性相关有关系   反映的是是否是线性相关  满秩则线性无关
clear all;
A=magic(4)
B=[5 4 3;1 2 3;7 7 7]
r1=rank(A)
r2=rank(B)
%% 矩阵的迹    对角线元素之和     特征值之和
clear all;
A=magic(4)
t1=trace(A)
eig(A)
t2=sum(eig(A))
%%  矩阵的范数   默认求2范数   1  无穷  需要大家掌握范数的基本数学知识
clear all;
A=[1 1 1;3 3 3;2 7 7]
n1=norm(A,1)
n2=norm(A)
n3=norm(A,inf)
%%  求矩阵的平方根
clear all;
A=[4 4 4;6 6 6;6 7 8]
X=sqrtm(A)
B=X*X
%%   求矩阵的指数和自然对数
X1=expm(A)
Y1=logm(X1)
%%  稀疏矩阵
clear all;
A=rand(4,3)>0.4
S=sparse(A)
whos 
%%  
clear all;
A=[0 0 0 66;0 0 55 0;0 0 0 0;44 0 0 0]
S=sparse(A)
n1=nnz(S)    %计算稀疏矩阵非零值得个数
spy(S)       %对非零元素的分布进行图形化显示
%%    单位稀疏矩阵
clear all;
A=speye(4)
C=full(A) 
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%%    2018/3/19  录制，欢迎指正




