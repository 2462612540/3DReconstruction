%%学习目标：1.掌握matlab编程中最常用的几种变量类型
%%  2.对变量类型的属性有所熟悉，不要求记忆，知道了解即可
%%   3.要求熟练运用这几种变量类型创建自己的变量
clear all;          % 清除Workspace中的所有变量
clc                 % 清除Command Window中的所有命令
% 在matlab中数字可以直接加减乘除
% 但是基本上不这样做，一般使用变量来操作
4 + 8
7 - 4
2 * 1
6 / 2
% 变量名区分大小写,强调变量名长度不超过63位，个人建议不要超过10位
% 变量名以字母开头，可以由字母、数字和下划线组成，但不能使用标点
% 先学简单的变量类型，
% 但是典型示范初学者在变量名方面容易犯的错误：见名而不知其意义
T = 2
t = 3
jieguo=T*t*2
one=int8(2)                   %%有符号整型
two=int16(-2)
three=uint32(20)              %%无符号整型  
four=uint64(80)
five=single(1.6)              %%单精度浮点型
six=23                        %%默认为双精度浮点型
seven=true                    %%逻辑型
eight='daxian'                %%字符串型
ten.name='daxianyipintang'    %%结构体
eleven=@cos                   %%函数句柄类型
%%whos    输入到command窗口可以查看详细属性信息
% 变量名应简洁明了，通过变量名可以直观看出变量所表示的物理意义
juzhen = rand(6,9)            %矩阵随机三行五列  0到1之间
rows = size(juzhen, 1)        %矩阵有几行
cols = size(juzhen, 2)        %矩阵有几列

%%
% 字符与字符串深入学习
zifu = 'a'
abs(zifu)                     %转换成ASCI
char(65)                      %转换成字母,代表A
zhaunhuan=num2str(65)         %将数字转换成字符串，多了耳朵
doc num2str                   %遇到不懂的函数直接doc 谷歌在线翻译不害怕

str = 'I am daxian'
length(str)                    %字符串长度
%%
% 矩阵深入学习
A = [3 6 2; 6 5 6; 8 7 9]
B = A'                          %转置矩阵
C = A(:)                        %变成一列
D = inv(A)                      %逆矩阵
A * D                           %矩阵相乘
%%
%  元胞数组深入学习，用到的时候在深刻理解也行，暂时不要求掌握
%  但是要知道有这个
A = cell(1, 6)
A{2} = eye(3)
A{5} = magic(5)                   %魔方
B = A{5}
B=A{2}
%%  举例一个比较复杂的结构体，暂时不要求掌握
%%
% 举例一个比较复杂的结构体，包括了两个
books = struct('name',{{'daxian','dashen'}},'price',[30 40])
books.name
books.name(1)
books.name{1}

%%
%%大仙QQ：1960009019
%%微信公众号：大仙一品堂

