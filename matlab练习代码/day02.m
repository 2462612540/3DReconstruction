%% ��ʾ�����õĸ�ʽ���趨
%�ı�������ʾ��ʽ�����ı�ֵ��Ĭ�ϱ���С�������λ
format short
xiaoshu=56.3985688;

format long
xiaoshu;

%% ��ʾ�߼���
clear all;
luoji1=true;
luoji2=false;
luoji3=true(3,4); %��ʾ�Ĺ���һ�����ǵ�3��4�еľ���
luoji4=false(4);%��ʾ����4���еľ��� �߼�����


%%����ֵ��ת�����߼�ֵ��ֻ��0����ת�����߼��٣�����ֵȫ����
clear all;
a=45;
alogical=logical(a);%logical �������Ƿ�1��תΪ���߼�ֵ
b=0;
blogical=logical(b);


%% ��������ļ�ӵ���    ��������=@����   ����ģʽ �������֣�������

clear all;
f1=@cos;
t=0:pi/4:pi ;
f1(t);
f2=@complex ;%���츴���ĺ���
f2(6,2); %ʵ����6 �鲿�ǵ�2

f1=@char ;
s1=func2str(f1); %���������ת�����ַ���
f2=str2func(s1); %���ַ���תΪ�����ľ��
functions(f1); %���ذ����ĺ�����Ϣ�Ľṹ�����
isa(f1,'function_handle') %�ж��Ƿ��Ǻ������
isequal(f1,f2);%���������������ǲ���ͬһ����

%%


