function [c,ceq]=fcon1219(x)
%非线性约束条件
c=[x(1)+x(2)+x(3)-30;x(1)-3*x(2)];
ceq=x(1)*x(2)*x(3)-50;