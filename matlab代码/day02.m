%% 显示的设置的格式的设定
%改变数据显示格式，不改变值，默认保留小数点后四位
format short
xiaoshu=56.3985688;

format long
xiaoshu;

%% 表示逻辑的
clear all;
luoji1=true;
luoji2=false;
luoji3=true(3,4); %表示的构造一个的是的3行4列的矩阵
luoji4=false(4);%表示的是4行列的矩阵 逻辑矩阵


%%将数值型转换成逻辑值，只有0才能转换成逻辑假，其它值全是真
clear all;
a=45;
alogical=logical(a);%logical 函数就是非1的转为的逻辑值
b=0;
blogical=logical(b);


%% 函数句柄的间接调用    函数名字=@函数   调用模式 函数名字（参数）

clear all;
f1=@cos;
t=0:pi/4:pi ;
f1(t);
f2=@complex ;%构造复数的函数
f2(6,2); %实部是6 虚部是的2

f1=@char ;
s1=func2str(f1); %将函数句柄转换成字符串
f2=str2func(s1); %将字符串转为函数的句柄
functions(f1); %返回包含的函数信息的结构体变量
isa(f1,'function_handle') %判断是否是函数句柄
isequal(f1,f2);%检测两个函数句柄是不是同一函数

%%


