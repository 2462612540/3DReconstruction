%% ѧ�����Ļ���
%% quad ��������� ����������ֵ������� һ�ػ���
clear all
syms x;
f=inline('1./(sin(x)+exp(-x.^2))');                       %��������
y=quad(f,0,1.1);                                                 %quad(���� �����ֳ�ʼֵֵ������ĩλֵ)  ��ʾ�� ���ֺ�����0-1.1�Ļ���ֵ


%% ���õĺ����ĺ����ļ�
y1=quad(@funtest,0,1.1);                                  %���õ��Ǻ������  ���õ������ĺ����ļ�
y2=quad(@funtest,0,1.1,1.e-10);                       %����


%% quadl ���ȸ��� �ٶȸ���
clear all
syms x;
f=inline('1./(sin(x)+exp(-x.^2))'); 
y=quadl(f,0,1.1);  
y2=quadl(f,0,1.1,1.e-20);


%% ������˫�ػ��ֵ�ֵ(���ػ���)
clear all
syms x;
f=inline('x*cos(y)+y*sin(x)','x','y');                      
y=dblquad(f,pi,2*pi,0,pi);                                   %����һ����д��������ʽ
y1=dblquad(@integrnd,pi,2*pi,0,pi);                 %���ǵĵ��õĺ������������ʽ


%% ������صĻ���ֵ
clear all;
f=inline('z*cos(x)+y*sin(x)', 'x','y','z');
q=triplequad(f,0, pi,0,1,-1,1);

q1=triplequad(@fun3 , 0,pi,0,1,-1,1);
q2=triplequad(@fun3,0, pi,0,1,-1,1,1.e-10)
q3=triplequad(@fun3 ,0, pi,0,1,-1,1,1.e-10,@quad);

