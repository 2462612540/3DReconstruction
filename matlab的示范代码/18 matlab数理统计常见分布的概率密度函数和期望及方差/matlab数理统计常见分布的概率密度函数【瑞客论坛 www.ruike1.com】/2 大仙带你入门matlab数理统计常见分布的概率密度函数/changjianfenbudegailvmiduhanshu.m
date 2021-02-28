
%%   �����ֲ��ĸ����ܶȺ���
%%  ����ֲ����ܶȺ���
clear all;
x=1:20;
y=binopdf(x,200,0.06); 
figure;
plot(x,y,'r*');
title('����ֲ���n=200��p=0.06��');
%%  ���ɷֲ����ܶȺ���
clear all;
x=1:20;
y=poisspdf(x,20);       %���ɷֲ�
figure;
plot(x,y,'r+');
title('���ɷֲ�');
%%   ���ηֲ�
clear all;
x=1:10;
y=geopdf(x,0.4);        %���ηֲ�
figure;
plot(x,y,'rx');
title('���ηֲ�');
%%  ���ȷֲ�����ɢ��
clear all;
n=10;
x=1:n;
y=unidpdf(x,n);             %���ȷֲ�����ɢ��
figure;
plot(x,y,'ro');
title('���ȷֲ�����ɢ��');
%%  ���ȷֲ���������
clear all;
x=-2:0.1:15;
y=unifpdf(x,0,6);           %���ȷֲ���������   0��6֮��
figure;
plot(x,y,'r:');
title('���ȷֲ���������');
%%  ָ���ֲ�
clear all;
x=0:0.1:10;
y=exppdf(x,2);      %ָ���ֲ�
figure;
plot(x,y,'r:');
title('ָ���ֲ�');
%%  ��̬�ֲ�
clear all;
x=-5:0.1:5;
y1=normpdf(x,0,1);          %��׼��̬�ֲ�
y2=normpdf(x,3,3);          %�Ǳ�׼��̬�ֲ�
figure;
plot(x,y1,x,y2,':');
legend('��׼��̬�ֲ�','�Ǳ�׼��̬�ֲ�');
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

%%  ��������ֲ��ĸ����ܶȺ���
%%  �����ֲ�
clear all;
x=0:0.1:15;
y1=chi2pdf(x,2);    %�����ֲ�n=2
y2=chi2pdf(x,3);    %�����ֲ�n=3
figure;
hold on;
plot(x,y1);
plot(x,y2,':');
legend('n=2','n=3');
title('�����ֲ�');
%%  t�ֲ�
clear all;
x=-5:0.1:5;
y1=tpdf(x,2);            %t�ֲ���n=2��
y2=tpdf(x,10);           %t�ֲ���n=10��  
figure;
plot(x,y1,'r:',x,y2,'b-');
legend('n=2','n=10');
title('t�ֲ�');
%% F�ֲ�
clear all;
x=0.1:0.1:5;
y=fpdf(x,2,5);             %F�ֲ�
figure;
plot(x,y,'r:');
title('F�ֲ���m=2,n=5��');
%%  
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��