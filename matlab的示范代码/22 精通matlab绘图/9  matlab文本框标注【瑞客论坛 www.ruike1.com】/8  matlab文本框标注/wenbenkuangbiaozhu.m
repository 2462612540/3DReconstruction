
%%   文本框标注

clear all;
x=0:0.1:2*pi;
y=sin(x);
figure;
plot(x,y,'--b');
xlabel('x');
ylabel('sin(x)');
text(pi,sin(pi),'\leftarrow sin(\pi)=0');
text(0,0,'\leftarrow sin(0)=1');
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%%  任意位置
clear all;
x=0:0.1:2*pi;
y=sin(x);
figure;
plot(x,y,'--b');
xlabel('x');
ylabel('sin(x)');
gtext('y=sin(x)','fontsize',10);
%%
