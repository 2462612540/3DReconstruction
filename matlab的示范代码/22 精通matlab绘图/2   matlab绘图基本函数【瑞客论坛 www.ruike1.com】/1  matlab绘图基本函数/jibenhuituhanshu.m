
%%  ѧϰĿ�꣺MATLAB������ͼ����
clear all;
t=0.1:0.02:2*pi;      %�Ա�����Χ
figure;
plot(t,sin(t),'r:');  %��ɫ
hold on;
plot(t,cos(t));     %%����
xlabel('x');        %%�������ǩ 
ylabel('y');        %%�������ǩ
title('plot');      %%��Ŀ
%% 
clear all;
y=magic(4);  %%4��4�еľ���
figure;
plot(y);      %��ÿһ�л���һ���ߣ��Ǿ���4����ÿ��4���㣬Ĭ����ɫ��ͬ
%% 
clear all;
x=0:0.1:16;
y=sin(x);
figure;
plot(x,y);
%%  
clear all;
x=1:4;
y=magic(4);
figure;
plot(x,y);
%%  
clear all;
x=0.01:0.1:2*pi;
y=cos(x+0.7)+5;
figure;
plot(x,y,'r-.*');     %��ɫ������
%%  
clear all;
x=0.01:0.2:6*pi;
y=cos(x);
figure;
plot(x,y,'g:^');
%%  
clear all;
x=-pi:pi/20:pi;
y=tan(sin(x))-sin(tan(x));
plot(x,y,'--rs','LineWidth',1,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',4);
%%  ͬʱ���ƶ�������

clear all;
x=-pi:pi/20:pi;
y=sin(x);
z=cos(x);
figure;
plot(x,y,'r:*',x,z,'g-.v');
%%  
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��