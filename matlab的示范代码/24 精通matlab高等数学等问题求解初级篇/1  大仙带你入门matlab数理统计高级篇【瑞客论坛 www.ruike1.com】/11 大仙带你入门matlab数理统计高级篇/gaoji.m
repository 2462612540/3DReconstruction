
%%   ��С�������ֱ��

clear all;
X=[1.2 3.4 4.5 6.3 7.1 8.2 9.5 10.3 13.6];
figure;
plot(X,'b*');
h=lsline
%%   ��̬�ֲ��ĸ���ͼ

clear all;
X=normrnd(0,1,100,1);
figure;
H=normplot(X)
%%  �����ۻ��ֲ�����ͼ

clear all;
X=normrnd(0,1,100,1);
[h,stats]=cdfplot(X)
%%   ����������ͼ

clear all;
a=weibrnd(1,2,50,1);
b=weibrnd(3,8,50,1);
X=[a b];
H=weibplot(X)
%%   ��λ��  ��λ��ͼ

clear all;
X=normrnd(1,4,50,1);
Y=normrnd(5,9,50,1);
figure;
H1=qqplot(X)
figure;
H2=qqplot(X,Y)
%%   ��Ӳο���

clear all;
X=[1.4 2.3 3.9 4.0 4.5 5.5 6.6 7.3 8.6 9.9];
figure;
plot(X,'r+');
h=refline(1,0.1)  %  б��Ϊ1  �ؾ�Ϊ0.1
%%   ��Ӷ���ʽ����

clear all;
X=[10.3 12.4 15.8 16.1 13.4 11.4 6.3 0.6 -9.6 -16.9];
figure;
plot(X,'r+');
p=[-1 7 3];
h=refcurve(p)
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��