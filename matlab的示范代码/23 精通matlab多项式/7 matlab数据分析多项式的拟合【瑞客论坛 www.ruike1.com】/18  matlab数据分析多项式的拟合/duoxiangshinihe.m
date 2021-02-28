% 多项式的拟合

clc;
clear all;
x=[0.2 0.3 0.5 0.6 0.8 0.9 1.2 1.3 1.5 1.8];
y=[1 2 3 5 6 7 6 5 4 1];
p5=polyfit(x,y,5);%5阶多项式拟合
y5=polyval(p5,x);
p5=vpa(poly2sym(p5),5)%显示5阶多项式
p9=polyfit(x,y,9);%9阶多项式拟合
y9=polyval(p9,x);
figure;%画图显示
plot(x,y,'bo');
hold on;
plot(x,y5,'r:');
plot(x,y9,'g--');
legend('原始数据','5阶多项式拟合','9阶多项式拟合');
xlabel('x');
ylabel('y');
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂