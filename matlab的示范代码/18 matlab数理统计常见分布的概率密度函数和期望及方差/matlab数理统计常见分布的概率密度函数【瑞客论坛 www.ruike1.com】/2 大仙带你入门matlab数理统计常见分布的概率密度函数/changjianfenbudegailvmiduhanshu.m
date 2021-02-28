
%%   常见分布的概率密度函数
%%  二项分布的密度函数
clear all;
x=1:20;
y=binopdf(x,200,0.06); 
figure;
plot(x,y,'r*');
title('二项分布（n=200，p=0.06）');
%%  泊松分布的密度函数
clear all;
x=1:20;
y=poisspdf(x,20);       %泊松分布
figure;
plot(x,y,'r+');
title('泊松分布');
%%   几何分布
clear all;
x=1:10;
y=geopdf(x,0.4);        %几何分布
figure;
plot(x,y,'rx');
title('几何分布');
%%  均匀分布（离散）
clear all;
n=10;
x=1:n;
y=unidpdf(x,n);             %均匀分布（离散）
figure;
plot(x,y,'ro');
title('均匀分布（离散）');
%%  均匀分布（连续）
clear all;
x=-2:0.1:15;
y=unifpdf(x,0,6);           %均匀分布（连续）   0到6之间
figure;
plot(x,y,'r:');
title('均匀分布（连续）');
%%  指数分布
clear all;
x=0:0.1:10;
y=exppdf(x,2);      %指数分布
figure;
plot(x,y,'r:');
title('指数分布');
%%  正态分布
clear all;
x=-5:0.1:5;
y1=normpdf(x,0,1);          %标准正态分布
y2=normpdf(x,3,3);          %非标准正态分布
figure;
plot(x,y1,x,y2,':');
legend('标准正态分布','非标准正态分布');
x1=-5:0.1:5;
y3=normpdf(x1,3,1);         %SIGMA=1
y4=normpdf(x1,3,2);         %SIGMA=2
y5=normpdf(x1,3,3);         %SIGMA=3
figure;
plot(x1,y3,'r-',x1,y4,'b:',x1,y5,'k--');
legend('SIGMA=1','SIGMA=2','SIGMA=3');
y6=normpdf(x1,0,2);                   %MU=0
y7=normpdf(x1,2,2);                   %MU=2
y8=normpdf(x1,4,2);                   %MU=4
figure;
plot(x1,y6,'r-',x1,y7,'b:',x1,y8,'k--');
legend('MU=0','MU=2','MU=4');

%%  三大抽样分布的概率密度函数
%%  卡方分布
clear all;
x=0:0.1:15;
y1=chi2pdf(x,2);    %卡方分布n=2
y2=chi2pdf(x,3);    %卡方分布n=3
figure;
hold on;
plot(x,y1);
plot(x,y2,':');
legend('n=2','n=3');
title('卡方分布');
%%  t分布
clear all;
x=-5:0.1:5;
y1=tpdf(x,2);            %t分布（n=2）
y2=tpdf(x,10);           %t分布（n=10）  
figure;
plot(x,y1,'r:',x,y2,'b-');
legend('n=2','n=10');
title('t分布');
%% F分布
clear all;
x=0.1:0.1:5;
y=fpdf(x,2,5);             %F分布
figure;
plot(x,y,'r:');
title('F分布（m=2,n=5）');
%%  
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂