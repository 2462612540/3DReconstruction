%%   学习目标：1    学会数据显示格式的设定
%%             2   逻辑真和假
%%             3   数值转换成逻辑值
%%             4   字符和字符串的关系
%%             5    函数句柄
%%  改变数据显示格式，不改变值，默认保留小数点后四位
clear all;
format short
xiaoshu=56.9875832453424
format short 
xiaoshu
format long
xiaoshu
format long e
xiaoshu
format short e
xiaoshu
format bank
xiaoshu
format +
xiaoshu
format rational
xiaoshu
format short                %恢复到系统默认的显示格式
%%  逻辑真和假
clear all;
luoji1=true
luoji2=false
luoji3=true(3,4)
luoji4=false(3)
%%   将数值型转换成逻辑值，只有0才能转换成逻辑假，其它值全是真
clear all;
a=45
alogical=logical(a)
b=0
blogical=logical(b)
c=[4.1 -9 0;7 0 1;0.5 3 6]
clogical=logical(c)
%%  matlab中不区分字符和字符串，1个字符2个字节
clear all;
a1='My name is 大仙'
a2=char([68 66])
a3=int8('daxian')
a4='大'
%%   函数句柄       间接的调用函数
clear all;
f1=@cos
t=0:pi/4:pi
f1(t)
f2=@complex
f2(6,2)
%%    关于函数句柄的其它函数
clear all;
f1=@char                       %函数句柄
s1=func2str(f1)                %将函数句柄转换成字符串
f2=str2func(s1)                %将字符串转换成函数句柄   
functions(f1)                  %返回包含函数信息的结构体变量
isa(f1,'function_handle')      %判断是否是函数句柄
isequal(f1,f2)                 %检测两个函数句柄是不是同一函数
%%   
%%  大仙QQ：1960009019
%%  在线教育微信公众号：大仙一品堂
%%  大鱼号：在线教育大仙一品堂
%%  一点资讯号：大仙一品堂
%%  2018/3/17  录制，欢迎指正

