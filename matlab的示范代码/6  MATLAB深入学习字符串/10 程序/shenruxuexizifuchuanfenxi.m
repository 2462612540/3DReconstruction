
%%   ѧϰĿ�꣺����ѧϰ�ַ���
%%  �ַ�����������淨һ��Ҫ����
clc;
clear all;
str='I am daxian';
disp(str);                  %�ַ�����ʾ
str_size=size(str)          %�ַ����ĳ���
str(1:7)                    %��ȡ�ַ�����һ������ʾ
str2=str(end:-1:1)          %�ַ����������
str_ascii=double(str)       %�ַ�����ASCII����ʾ
char(str_ascii)             %���ַ�����ʾ
str3='���Ǵ��ɣ�';          %��ʾ����
str3_ascii=double(str3)     %��ʾ���ֵı���
char(str3_ascii)            %��ʾ����
%%   �ַ����ĳ����淨   Ҫ������
clc;
clear all;
str1='I am from daxianyipintang,';         %�ַ���
str2='i am daxian';
str=[str1 str2]                 %���������ַ���
s=['Boy';'boy']                 %�����ַ����󣬳������
c=char('daxian','yipintang')    %����char()�����ַ�����
celldata=cellstr(c)              %�����ַ�����Ԫ����
celldata{1}                      %��ʾ��һ��ֵ
%%     �ַ������м��淨   Ҫ������
clc;
clear all;
str1='I like reaading,';
str2='and you?';
s1=[str1 str2]          %���������ַ���
s2=strcat(str1,str2)    %���ú���strcat( )�����ַ���
s3=strvcat(str1,str2)   %�Ѷ���ַ�����Ϊ����
%%      �ַ������м��淨   Ҫ������
clc;
clear all;
str1='daxian';
str2='daxia';
n=strcmp(str1,str2)         %�ж������ַ����Ƿ����
n1=strncmp(str1,str2,5)     %�ж�ǰk���ַ��Ƿ����
n2=strncmp(str1,str2,6)
%%    �ַ������м��淨   Ҫ������
clc;
clear all;
str1='daxian';
str2='dashen';
n1=str1==str2       %��Ӧ�ַ��Ƿ����
n2=str1>=str2       %�ַ��ıȽ�
n3=ge(str1,str2)    %���ú���ge  �ַ��ıȽ�
%%  �ַ����Ĳ���
%%   
clc;
clear all;
str='I am dAxian';
n1=strfind(str,'n')      
n2=strfind('n',str)         %ע��˳��
n3=strfind(str,'am')        %�����ַ���
n4=strfind(str,'Am')        %���ִ�Сд
n5=strfind(str,' ')         %���ҿո�
%%    �ַ������滻
clc;
clear all;
str='I am daxian';
s1=strrep(str,'daxian','dashen')    %�ַ����滻
s2=strrep(str,'Daxian','dashen')    %���û���ҵ������Ϊԭ�����ַ���
%%    
clc;
clear all;
t1=num2str(randn(3,3))      %������ת��Ϊ�ַ���
pi=num2str(pi,5)                %ֻ��ʾ6λ
t2=int2str(randn(3,3))          %��ȡ����Ȼ��ת��Ϊ�ַ���
x1=str2num(t2)                  %���ַ�������ת��Ϊ���־���
x2=str2double('82+96i')        %���ַ���ת��Ϊ˫������ֵ
%%  ����ת��
clc;
clear all;
b=dec2bin(123)          %��ʮ������ת��Ϊ������
h=dec2hex(34)          %��ʮ������ת��Ϊʮ������
d1=hex2dec('2B')        %��ʮ������ת��Ϊʮ����
d2=bin2dec('1100001')   %��������ת��Ϊʮ����
%%   
clc;
clear all;
str='I am daxian';
isspace(str)                %�Ƿ�Ϊ�ո�
isletter(str)               %�Ƿ�Ϊ��ĸ
%%   ִ���ַ������   
clc;
clear all;
x=0:pi/20:2*pi;
str='figure;y=sin(x);plot(x,y);legend(''sinx'')';
eval(str);
%%     
%%  
clc;
clear all;
str='I am  DAXIAN'
s1=upper(str)	      % ��д		
s2=lower(str)		  % Сд	
x=[1 2 3];
y1=ischar(str)		  %�ж��ǲ����ַ���		
y2=ischar(x)	
%%  
%%  help strfun
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��
%%    2018/3/17  ¼�ƣ���ӭָ��
