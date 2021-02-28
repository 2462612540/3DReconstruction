function Lagrange_main()
clc
x=0:1:10;
y=x./(cos(x)+1);
k=1;
for x0=0:0.1:10;
    y0(k)=Lagrange(x,y,x0);
    k=k+1;
end
x0=0:0.1:10;
plot(x0,y0)
hold on 
scatter(x,y,'ro')

end

function y0=Lagrange(x,y,x0)
n=length(x);
l=ones(1,n);
for k=1:n
    for j=1:n
        if j~=k
            l(k)=l(k)*(x0-x(j))/(x(k)-x(j));
        end
    end
end
y0=sum(y.*l);
end
%%����QQ��1960009019
%%���߽���΢�Ź��ںţ�����һƷ��
%%����ţ����߽�������һƷ��
%%һ����Ѷ�ţ�����һƷ��