%%   ѧϰĿ�꣺1    ѧ��������ʾ��ʽ���趨
%%             2   �߼���ͼ�
%%             3   ��ֵת�����߼�ֵ
%%             4   �ַ����ַ����Ĺ�ϵ
%%             5    �������
%%  �ı�������ʾ��ʽ�����ı�ֵ��Ĭ�ϱ���С�������λ
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
format short                %�ָ���ϵͳĬ�ϵ���ʾ��ʽ
%%  �߼���ͼ�
clear all;
luoji1=true
luoji2=false
luoji3=true(3,4)
luoji4=false(3)
%%   ����ֵ��ת�����߼�ֵ��ֻ��0����ת�����߼��٣�����ֵȫ����
clear all;
a=45
alogical=logical(a)
b=0
blogical=logical(b)
c=[4.1 -9 0;7 0 1;0.5 3 6]
clogical=logical(c)
%%  matlab�в������ַ����ַ�����1���ַ�2���ֽ�
clear all;
a1='My name is ����'
a2=char([68 66])
a3=int8('daxian')
a4='��'
%%   �������       ��ӵĵ��ú���
clear all;
f1=@cos
t=0:pi/4:pi
f1(t)
f2=@complex
f2(6,2)
%%    ���ں����������������
clear all;
f1=@char                       %�������
s1=func2str(f1)                %���������ת�����ַ���
f2=str2func(s1)                %���ַ���ת���ɺ������   
functions(f1)                  %���ذ���������Ϣ�Ľṹ�����
isa(f1,'function_handle')      %�ж��Ƿ��Ǻ������
isequal(f1,f2)                 %���������������ǲ���ͬһ����
%%   
%%  ����QQ��1960009019
%%  ���߽���΢�Ź��ںţ�����һƷ��
%%  ����ţ����߽�������һƷ��
%%  һ����Ѷ�ţ�����һƷ��
%%  2018/3/17  ¼�ƣ���ӭָ��

