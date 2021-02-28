function Newton_main()
clc
x=0:1:10;
y=x./(tan(x)+1);
k=1;
for x0=0:0.01:10;
    y0(k)=Newton(x,y,x0);
    k=k+1;
end
x0=0:0.01:10;
plot(x0,y0)
hold on 
scatter(x,y,'ro')

end

function y0=Newton(x,y,x0)
n=length(x);
A=zeros(n);
A(:,1)=y';
for j=2:n
    for i=1:(n-j+1)
        A(i,j)=(A(i+1,j-1)-A(i,j-1))/(x(i+j-1)-x(i));
    end
end

N(1)=A(1,1);
for j=2:n
    T=1;
    for i=1:j-1
        T=T*(x0-x(i));
    end
    N(j)=A(1,j)*T;
end
y0=sum(N);
end
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂