%% 学习目标:深入学习结构体变量
%% 创建结构体变量
clear all;
s1=struct('fengge',{'big','little'}, 'yanse', {' blue' }, 'shuju', {[8 8 9;7 6 5] [1:9]});
diyi=s1(1);
dier=s1(2);
%%―删除结构体成员变量
shan2 = rmfield(s1, 'yanse');  
shan2and3=rmfield(s1,{' yanse','shuju'});

%% 判断的是不是的结构体 
clear all
s=struct('hehe',1,'hah',2);
f1=isstruct(s);
f2=isfield(s,'hehe');                                             %是否为成员的变量

%% 按照某种方式获取成员变量
clear all;
s=struct('da', 0,'xian',1, 'yi',2,'pin',3);
f1=fieldnames(s);                                               %获取成员变量的名称
f2=orderfields(s);                                               %按照成员变量的字母顺序排序

%% 获取具体的某个实际成员变量的值
clear all;
s=struct('xingming', {' daxian' , ' dashen'}, 'xingbie', {'nan', 'nv' },'fenshu', [67 90 99]);
s(1).xingming
s(1).xingbie
s(1).fenshu
s(1).fenshu(3)
pingjunfen=mean(s(1).fenshu);
zuigaofen=max(s(1).fenshu);

%% 使用函数来获取成员变量的值
clear all;
s1=struct(' haha',8, ' hehe',9);
f1=getfield(s1,'haha');

%% 使用函数来对成员变量重新赋值
clear all;
s1=struct('haha',7,'heh',8);
s2=setfield(s1,'haha',9);                                     %实现对结构体成员的重新赋值





