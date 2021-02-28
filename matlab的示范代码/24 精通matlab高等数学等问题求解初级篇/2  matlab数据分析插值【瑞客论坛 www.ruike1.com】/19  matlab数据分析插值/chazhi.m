%%  ѧϰĿ�꣺��ֵ
%%   һά����ʽ��ֵ

clc;
clear all;
x=0:0.2:2;
y=(x.^2-3*x+5).*exp(-3*x).*sin(x);
xi=0:0.03:2;                            %Ҫ��ֵ������
yi_nearest=interp1(x,y,xi,'nearest');   %�ٽ����ֵ
yi_linear=interp1(x,y,xi);              %Ĭ��Ϊ���Բ�ֵ
yi_spine=interp1(x,y,xi,'spine');       %����������ֵ
yi_pchip=interp1(x,y,xi,'pchip');       %�ֶ�����Hermite��ֵ
yi_v5cubic=interp1(x,y,xi,'v5cubic');   %MATLAB5�����ζ���ʽ��ֵ
figure;                                 %��ͼ��ʾ
hold on;
subplot(231);
plot(x,y,'ro');
title('��֪���ݵ�');
subplot(232);
plot(x,y,'ro',xi,yi_nearest,'b-');
title('�ٽ����ֵ');
subplot(233);
plot(x,y,'ro',xi,yi_linear,'b-');
title('���Բ�ֵ');
subplot(234);
plot(x,y,'ro',xi,yi_spine,'b-');
title('����������ֵ');
subplot(235);
plot(x,y,'ro',xi,yi_pchip,'b-');
title('�ֶ�����Hermite��ֵ');
subplot(236);
plot(x,y,'ro',xi,yi_v5cubic,'b-');
title('MATLAB5�����ζ���ʽ��ֵ');
%%����QQ��1960009019
%%���߽���΢�Ź��ںţ�����һƷ��
%%����ţ����߽�������һƷ��
%%һ����Ѷ�ţ�����һƷ��
%% ����һά���ٸ���Ҷ��ֵ

clc;
clear all;
x=0:1.1:8;
y=sin(x);
n=2*length(x);  %������1��
yi=interpft(y,n);%����һά���ٸ���Ҷ��ֵ
xi=0:0.55:8.3;%Ҫ��ֵ������
figure;%��ͼ��ʾ
hold on;
plot(x,y,'ro',xi,yi,'b-');
legend('ԭʼ����','��ֵ����');
%%  ����������ֵ

clc;
clear all;
x=0:10;%ԭʼ����
y=sin(x);
xi=0:.25:10;%��ֵ����
yi=spline(x,y,xi);%����������ֵ
pp=spline(x,y);%������ֵ����
y1=ppval(pp,xi); %�����ͬy1=yi
y2=interp1(x,y,xi,'spline'); %�����ͬy2=yi
figure;%��ͼ��ʾ
plot(x,y,'o',xi,yi);
legend('ԭʼ����','����������ֵ');
