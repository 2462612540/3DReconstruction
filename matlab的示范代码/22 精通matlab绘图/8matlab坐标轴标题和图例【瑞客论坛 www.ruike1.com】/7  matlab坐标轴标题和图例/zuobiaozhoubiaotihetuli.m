
% ѧϰĿ�꣺matlab����������ͼ��
%%  ���������
clear all;
x=0.1:0.1:2*pi;
y=sin(x);
figure;
plot(x,y);
axis([0,2*pi,-1,1])
xlabel('\it�������','fontname','����');
ylabel('�������','fontname','����','rotation',-90);
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��
%% ͼ��
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
legend boxoff;            %%����ͼ���ı߿�

%%  
