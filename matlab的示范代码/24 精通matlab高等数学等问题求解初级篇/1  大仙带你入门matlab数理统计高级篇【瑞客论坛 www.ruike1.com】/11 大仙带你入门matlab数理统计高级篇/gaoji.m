
%%   最小二乘拟合直线

clear all;
X=[1.2 3.4 4.5 6.3 7.1 8.2 9.5 10.3 13.6];
figure;
plot(X,'b*');
h=lsline
%%   正态分布的概率图

clear all;
X=normrnd(0,1,100,1);
figure;
H=normplot(X)
%%  经验累积分布函数图

clear all;
X=normrnd(0,1,100,1);
[h,stats]=cdfplot(X)
%%   威布尔概率图

clear all;
a=weibrnd(1,2,50,1);
b=weibrnd(3,8,50,1);
X=[a b];
H=weibplot(X)
%%   分位数  分位数图

clear all;
X=normrnd(1,4,50,1);
Y=normrnd(5,9,50,1);
figure;
H1=qqplot(X)
figure;
H2=qqplot(X,Y)
%%   添加参考线

clear all;
X=[1.4 2.3 3.9 4.0 4.5 5.5 6.6 7.3 8.6 9.9];
figure;
plot(X,'r+');
h=refline(1,0.1)  %  斜率为1  截距为0.1
%%   添加多项式曲线

clear all;
X=[10.3 12.4 15.8 16.1 13.4 11.4 6.3 0.6 -9.6 -16.9];
figure;
plot(X,'r+');
p=[-1 7 3];
h=refcurve(p)
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂