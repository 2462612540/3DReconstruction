%%   ѧϰĿ�꣺ѧ�������
%%  quad���������   ��������ֵ�������
clear all;
syms x;
f=inline('1./(sin(x)+exp(-x.^2))')   %��������
y=quad(f,0,1.1)            %�������    
y1=quad(@myfun1,0,1.1)    %�������
y2=quad(@myfun1,0,1.1,1.e-10)      %����  
%%  quadl���ȸ��ߣ��ٶȸ���
clear all;
syms x;
f=inline('1./(sin(x)+exp(-x.^2))','x');
y=quadl(f,0,1.1)
y1=quadl(f,0,1.1,1.e-20)
%%  ˫�ػ������
clear all;
syms x;
f=inline('x*cos(y)+y*sin(x)','x','y');
y=dblquad(f,pi,2*pi,0,pi)
y1=dblquad(@integrnd,pi,2*pi,0,pi)
y2=dblquad(@(x,y) x*cos(y)+y*sin(x),pi,2*pi,0,pi)
%%  ���ػ��ֵ����
clear all;
f=inline('z*cos(x)+y*sin(x)','x','y','z');
q=triplequad(f,0,pi,0,1,-1,1)
q1=triplequad(@(x,y,z) (y*sin(x)+z*cos(x)),0,pi,0,1,-1,1)
q2=triplequad(@(x,y,z) (y*sin(x)+z*cos(x)),0,pi,0,1,-1,1,1.e-10)
q3=triplequad(@(x,y,z) (y*sin(x)+z*cos(x)),0,pi,0,1,-1,1,1.e-10,@quad)
%%  
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��
%%    2018/3/17  ¼�ƣ���ӭָ��