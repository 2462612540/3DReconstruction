
% 学习目标：matlab坐标轴标题和图例
%%  坐标轴标题
clear all;
x=0.1:0.1:2*pi;
y=sin(x);
figure;
plot(x,y);
axis([0,2*pi,-1,1])
xlabel('\it横轴标题','fontname','宋体');
ylabel('纵轴标题','fontname','宋体','rotation',-90);
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%% 图例
clear all;
x=0.1:0.1:2*pi;
y=sin(x);
z=cos(x);
figure;
subplot(121);
plot(x,y,'-b');
hold on;
plot(x,z,'--r');
axis([0,2*pi,-1,1])
set(gca,'XTick',[0 pi 2*pi],'XTickLabel',{'0','pi','2pi'});
legend('sin(x)','cos(x)');
subplot(122);
plot(x,z,':r');
hold on;
plot(x,y,'-b');
axis([0,2*pi,-1,1])
legend('cos(x)','sin(x)');
legend boxoff;            %%隐藏图例的边框

%%  
