% 变量名区分大小写,强调变量名长度不超过63位，个人建议不要超过10位变量名以字母开头
% 可以由字母、数字和下划线组成，但不能使用标点

T = 2;
t=3;
res=T*t*2;

%% 表示的是有符号的整形
one=int8(2);
two=int16(-2);

%% 表示的无符号整形
three = uint32(20);
four =uint64(80);

%% whos 查看所有的变量的值
whos
%%  结构体
ten.name='this is ten';
%% 字符串
str ='woshi ';
%% 函数的句柄
elven=@cos;
%% 矩阵随机n*m 的0到1之间%矩阵
%% 矩阵有几列 size的求解矩阵的行列
juzhen=rand(6,9);
rows=size(juzhen ,1);
clos=size(juzhen,2);

%% 字符
str='a';
abs(str)
res1=num2str(65);%表示的是数字转为的字符串
doc num2str%遇见不懂得函数的 查看APi的结果是的doc num2str

str2='i am zhuang xiao yan ';
length(str2)


%% 矩阵的学习
A=[6 6 2;6 5 6;8 7 9];
B = A'; %表示的是A的转置矩阵
C=A(:);%表示变成为一列
D=inv(A); %表示的求解矩阵的逆解
E=A * D; %表示的是的矩阵的相乘

%%
%元胞数组深入学习，用到的时候在深刻理解也行
F = cell(1,6); %1行 6列的一个元胞数组
F{2}= eye(3);%表示创建的是一个n*n的一个矩阵
F{5}=magic(5);%表示创建的是的5*5魔方一个矩阵
H=A{5};

%%
%结构体的表示使用学习
books=struct('name',{{'daxin','daasheng'}},'price',[30 40]);
books.name;
books.name(1);
books.name{1}

%%
%数据类型的转换
shu=66;
shu8=int8(shu);
shu16=int16(shu);

%数值取整
num=89.635;
roud0=round(num); %最接近取整，0.5为临界条件
roud1=round(8.5);
roud2=round(-6.4);
roud3=round(-6.5);

fix1=fix(-1.5); %表示的向0取整
fix2=fix(-1.6); 

floor1=floor(2.7);% 小于或者是等于该数的接近整数的
floor2=floor(-2.4);

ceil1=ceil(4.2); %大于或者是等于该数的接近整数
ceil2=ceil(-4.4);
%%
%复数的学习
fushu=3+4i;
reall1=real(fushu); %求解的是复数的实部
imag1=imag(fushu);%求解的是复数的虚部
abs1=abs(fushu); %求解复数的模长
angle1=angle(fushu);%求解复数的角度

gonge=conj(fushul) ;%求它的共辄复数

fushuduo=complex(1:3,2:4);
imageduo=imag(fushuduo);






