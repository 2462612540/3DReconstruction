%% ѧϰĿ�꣺ʹ��MATLAB��ⳣ΢�ַ���  ͨ��  �ؽ�  ��ֵ��
%%  ��΢�ַ��̵�ͨ��
clear all;
f1=dsolve('Dy-y=sin(x)')     %Ĭ���������tΪ�Ա������   �����C2Ϊ���ֳ���
f2=dsolve('Dy-y=sin(x)','x')       % ��xΪ�Ա������     
%%  ��΢�ַ��̵��ؽ�
clear all;
dsolve('Dy=a*y','y(0)=b')          %��΢�ַ��̵��ؽ�
%%  ��΢�ַ�����
clear all;
z=dsolve('Dx=y','Dy=-x')            %  Ĭ��tΪ�Ա���
z.x
z.y
%%  ��ⳣ΢�ַ��������ֵ��
clear all;
close all;
options=odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-5]);    %���ò���
[t,y]=ode45(@rigid,[0 12],[0 1 1],options); 
%  ʱ�䷶Χ0��12��rigid�Ƿ����飬�����ĳ�ʼֵ�� 0 1 1 
figure;
plot(t,y(:,1),'-',t,y(:,2),'--',t,y(:,3),':');
xlabel('Time');
legend('y1','y2','y3');
%  odeset  �ṹ��
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��
%%    2018/3/17  ¼�ƣ���ӭָ��