function chengxu()
x1=[0.18
    0.30
    0.10
    0.22
    0.34
    0.14
    0.26]*1e-2;
x2=[28
    22
    32
    26
    20
    30
    24];
x3=[48
    45
    42
    39
    36
    33
    30];
y=[0.43
   0.41
   0.39
   0.49
   0.4
   0.42
   0.42];
A=[x1,x2,x1.^2,x2.^2,x3.^2];
b=y;
x=A\b;

yy=A*x;

plot(y)
hold on
plot(yy,'ro-')
legend({'实验值 ','拟合值'})
r=XGXS(y,yy)

end

function r=XGXS(X,Y)
%计算相关系数
X1=mean(X);
Y1=mean(Y);
fenzi=sum((X-X1).*(Y-Y1));
fenmu=sqrt(sum((X-X1).^2)*sum((Y-Y1).^2));
r=fenzi/fenmu;  %相关系数
end
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂