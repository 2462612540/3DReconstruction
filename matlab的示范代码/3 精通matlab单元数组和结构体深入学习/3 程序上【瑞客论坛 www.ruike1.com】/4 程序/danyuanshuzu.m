%%  学习目标：深入掌握单元数组的各种使用方法
%%  单元数组的一般建立方法
clear all;
c={'大仙','daxian';[5 4 7 8 3],7}    %两行两列，每个元素都可以类型不一样
c{1,1}   
c{2,1}
c{2,2}=[]
%%   使用函数创建单元数组
clear all;
c=cell(3,3)                           %  3行3列的单元数组，默认为空      
c{1,1}=[1:3;3:5]                      %  两行三列的矩阵
c{2,2}='daxian'       
c{2,3}='yipintang'
c{2,1}=3            
%%   使用函数显示单元数组
celldisp(c)                             %单独显示单元数组的元素
celldisp(c,'daxiancell')                %改一个名称显示
%%     图形化显示单元数组  好玩
clear all;
c={'大仙','daxian';[1:6],77}    
figure;
out=cellplot(c,'legend')                 %图形化显示   带注释
%%    单元数组的扩张和缩减  
clear all;
c={'大仙','daxian';[1:6;2:7],5}
c{2,4}=3                       		      %单元数组的扩充
c(1,:)                            		  %第一行元素
c(:,3)=[]                         		  %通过对整列赋值为空就可以删除第三列
d={'大神','dashen';[],44}
e=[c,d]                           	       %单元数组的合并
e(2,:)=[]                          	       %通过对整行赋值为空就可以删除第二行
%%  将矩阵转换为单元数组   
clear all;
a=[4 6 8;6 6 7]   
c=num2cell(a)				                %将矩阵转换为单元数组
iscell(a)                                   %判断是不是单元数组
iscell(c)
%%   将单元数组转换为结构体变量
clear all;
c={'daxian',170,20}
fields={'name','shengao','salary'}           %结构体变量的成员
s=cell2struct(c,fields,2)                    %将单元数组转换为结构体变量
%%  
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%%    2018/3/17  录制，欢迎指正

