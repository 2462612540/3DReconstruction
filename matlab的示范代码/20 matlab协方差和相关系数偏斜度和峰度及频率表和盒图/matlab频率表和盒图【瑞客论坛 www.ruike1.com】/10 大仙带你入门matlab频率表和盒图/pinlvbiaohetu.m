
%%   正整数的频率表

clear all;
X=[2 3 4 1 2 4 6 5 8 3 2 1 6];
tabulate(X)
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂

%%  样本数据的盒图

clear all;
a=normrnd(1,4,50,1);
b=normrnd(5,1,50,1);
x=[a b];
figure;
boxplot(x,'notch','on','symbol','b*','orientation','vertical');
figure;
boxplot(x,'notch','off','symbol','r+','orientation','horizontal');