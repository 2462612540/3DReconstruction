%% 学习目标:矩阵的中阶段学习和掌握
%% 矩阵元素的查找
clear all;
A=[4 0 5;0 6 8;9 9 9]
B=find(A)%返回非0元素的位置
C=find(A>=5)%返回位置
D=A(find(A>=5))


%% 矩阵元素的排序
clear all;
A=[3 0 4;0 2 1;5 4 7]
B=sort(A);%每一列从小到大排序
C=sort(A,2);% 按照行排序 
D=sort(A,'desceed')%降序
E=sort(A,2,'descend')


%% 炬阵元素的求和
clear all;
A=[2 2 1 1;3 3 3 3;1 1 1 1]
B1=sum(A) %每一列的和
B2=sum(A,2) %表示的每一列的数据的和
C1=cumsum(A)%返回值为矩阵 表示列的累加和
C2=cumsum(A,2)%表示的行的累加和

%% 矩阵元素的求积
A=[4 4 4 0;5 5 5 5;6 6 6 6]
B1=prod(A) %按照列来进行求积
B2=prod(A,2)%按照行来进行求积
C1=cumprod(A)%按照列累乘来进行求积
C2=cumprod(A,2)%按照行累乘来进行求积


%% 矩阵元素的差分
clear all;
A=[1 1 1 0;2 2 2 2;1 2 3 4]
B1=diff(A)
B2=diff(A,2) %每一列求2阶差分
B3=diff(A,1,1)%列上进行1阶差分
B4=diff(A,1,2)%行上进行1阶差分 第二1表示的是几阶差分 后面的1 2 表示的按照行进行还是按照进行差分

%% 全0矩阵 
clear all;
A=zeros(3);
B=zeros(2,4);
C=zeros(size(B));

%% 全1矩阵
clear all;
A=ones (4)%产生的是一个方阵 n*n的矩阵
B=ones([4,2])
C=ones(size(A))

%%对角线是1的矩阵
clear all;
A=eye(4);
B=eye([4,5]);
C=eye(size(B));

%% 随机矩阵  0到1
clear all;
A =rand(4);
B=rand([2,5]);
C=rand(size(B));

%%每一行，每一列，对角线的和都相等
clear all;
A=magic(5);

%%求方阵的行列式 T
clear all;
A=magic(5);
B=[2:4;5 5 5;3 3 3];
y1=det(A);
y2=det(B);

%% 计算矩阵的特征值
clear all;
A=magic(3);
E=eig(A);%求矩阵的全部特征值，是一个向量
[v, D]=eig(A);%返回两个方阵，V的每一列是一个特征向量，D的对角线上的元素是特征值

%% 求方程的根
clear all;
p=[4 4 4 1] %向量P是方程的系数，从高到低排4x ^3+4x~2+4x+1
A=compan(p); %求伴随矩阵
xl=eig(A);%求特征值就是根有3个根
x2=roots(p);%另一种方法



