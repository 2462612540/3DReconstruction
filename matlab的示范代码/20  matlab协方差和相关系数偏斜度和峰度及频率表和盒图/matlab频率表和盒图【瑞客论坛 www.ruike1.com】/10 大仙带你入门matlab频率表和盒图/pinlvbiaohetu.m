
%%   ��������Ƶ�ʱ�

clear all;
X=[2 3 4 1 2 4 6 5 8 3 2 1 6];
tabulate(X)
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��

%%  �������ݵĺ�ͼ

clear all;
a=normrnd(1,4,50,1);
b=normrnd(5,1,50,1);
x=[a b];
figure;
boxplot(x,'notch','on','symbol','b*','orientation','vertical');
figure;
boxplot(x,'notch','off','symbol','r+','orientation','horizontal');