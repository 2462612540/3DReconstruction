%%   ѧϰĿ�꣺����10���Ż�����
%%   ��Opt_Golden()������Ż�
f1201 = inline('x-(x.*x-2).^3/2','x');
a = 0;
b = 4; 
TolX = 1e-4;%�ж�ѭ���Ƿ�ֹͣ��x��ֵ
TolFun = 1e-4; %������ֵ
MaxIter = 100; %�趨��������
[xo,fo] = Opt_Golden(f1201,a,b,TolX,TolFun,MaxIter)
%%   �ò�ֵ��������Ż�����
clear all
f1202=inline('(x.*x - 2).^2/2-1', 'x');;
%%%�趨����˵�
a = 0;
b = 5;
%%%�ֱ��趨x��ֵ�ͺ���f��ֵ
TolX = 1e-5; 
TolFun = 1e-8; 
%%%�趨��������
MaxIter = 100;
%%%�ö��β�ֵ�������
[xoq,foq] = Opt_Quadratic(f1202,[a b],TolX,TolFun,MaxIter)
%��matlab���ú�������Сֵ�Լ����ĺ���ֵ
[xob,fob] = fminbnd(f1202,a,b) %MATLAB ���ú������
%%   ��Nelder-Mead���������Ż���
f1203 = inline('x(1)*(x(1)-5-x(2))+x(2)*(x(2)-4)','x');
x0 = [0 4];
TolX = 1e-4; 
TolFun = 1e-9;
MaxIter = 100;
[xN,fN] = Opt_Nelder(f1203,x0,TolX,TolFun,MaxIter)
%ȡ��Сֵ���Լ��˴�����Сֵ
[xF,fF] = fminsearch(f1203,x0) %��MATLAB���ú���fminsearch���
%%   �������½��������Ż���
f1204 = inline('x(1)*(x(1)-5-x(2))+x(2)*(x(2)-4)','x');%Ŀ�꺯��
grad=inline('[2*x(1)-5-x(2),-x(1)+2*x(2)-4]','x'); %Ŀ�꺯�����ݶȺ���
x0 = [1 4];
TolX = 1e-4; 
TolFun = 1e-9;
MaxIter = 100;
dist0=1;
[xo,fo] = Opt_Steepest(f1204,grad,x0,TolX,TolFun,dist0,MaxIter)
%%   ��ţ�ٷ������Ż���
f1205 = inline('x(1)*(x(1)-5-x(2))+x(2)*(x(2)-4)','x');%Ŀ�꺯��
grad=inline('[2*x(1)-5-x(2),-x(1)+2*x(2)-4]','x'); %Ŀ�꺯�����ݶȺ���
x0 = [-8;-8]; 
options=optimset('TolX',1e-4,'TolFun',1e-9,'MaxIter',100);
xo = fsolve(grad,x0,options) %��fsolve�������Է������
yo=f1205(xo)
%%   ��ģ���˻𷨼��㺯������Сֵ
clear all
f = inline('5*sin(x(1)*x(2))+x(1)^2+x(2)^2','x');
l = [-5 -5]; %����
u = [5 5]; %����
x0 = [-4 0];
TolFun = 1e-9;
TolX=1e-5;
kmax = 800;
%%%%��Nelder-Meat����
[xo_nd,fo] = Opt_Nelder(f,x0,TolX,TolFun,kmax) 
 %%%%��matlab���ú�����֤
[xos,fos] = fminsearch(f,x0)
[xou,fou] = fminunc(f,x0)
%%%%��ģ���˻���
 q =0.8;
[xo_sa,fo_sa] =Opt_Simu(f,x0,l,u,kmax,q,TolFun)
%%  �Ŵ��㷨�������Ž�
f = inline('x(1)^4-16*x(1)^2-5*x(1)*x(2)+x(2)^4-16*x(2)^2-5*x(2)','x');
l = [-5 -5]; %����
u = [5 5]; %����
x0 = [0 0];
Np = 30; %Ⱥ���С
Nb = [12 12]; %����ÿ�������Ķ�����λ��
Pc = 0.5;  %�������
Pm = 0.01; %�������
eta = 0.8;   %ѧϰ��
kmax = 200; %����������
[xos,fos]=fminsearch(f,x0)
[xo_gen,fo_gen] = genetic(f,x0,l,u,Np,Nb,Pc,Pm,eta,kmax)
%%   �������ճ��ӷ������Ż���
x=zeros(1,2);
%��syms��ʾ��ת�������Լ������
syms x y lama
f=x+y+lama*(x^2+y^2-2);
%�ֱ���������x��y��lama��ƫ��
dx=diff(f,x);
dy=diff(f,y);
dlama=diff(f,lama);
%��ƫ��Ϊ�����x��y
xx=solve(dx,x); %��x��ʾΪlama����
yy=solve(dy,y);  %��y��ʾΪlama����
ff=subs(dlama,{x,y},{xx,yy}); %����dlama�ù���lama��һԪ����
lamao=solve(ff); %����lamao
xo=subs(xx,lama,lamao) %���ȡ��ֵ����xo
yo=subs(yy,lama,lamao)  %ȡ��ֵ����yo
fo=subs(f,{x,y,lama},{xo,yo,lamao}) %��ֵ�㺯��ֵ
%%  
%%   �ͷ���������Լ�����Ż�����
clear
f ='f1209';
x0=[3 0];
TolX = 1e-4; 
TolFun = 1e-9;
MaxIter=100;
alpha0 = 1;
%%%%ѡ�ò��ǻ����ݶȵ���Լ�����Ż�������⣬����ȷ���
[xo_Nelder,fo_Nelder] = Opt_Nelder(f,x0,TolX,TolFun,MaxIter) %Nelder ����
[fc_Nelder,fo_Nelder,co_Nelder] = f1209(xo_Nelder) %Nelder�������
[xo_s,fo_s] = fminsearch(f,x0) %MATLAB ���ú���fminsearch()
[fc_s,fo_s,co_s] = f1209(xo_s) %��Ӧ�Ľ��
%%%�����ݶȵķ��������½����ȣ��õ�������
grad=inline('[2*(x(1)+1)*((x(1)-1.2)^2+0.4*(x(2)-0.5)^2)+((x(1)+1)^2+4*(x(2)-1.5)^2)*2*(x(1)-1.2),8*(x(2)-1.5)*((x(1)-1.2)^2+0.4*(x(2)-0.5)^2)+((x(1)+1)^2+4*(x(2)-1.5)^2)*0.8*(x(2)-0.5)]','x');
xo_steep = Opt_Steepest(f,grad,x0,TolX,TolFun,alpha0) %�����½���
[fc_steep,fo_steep,co_steep] = f1209(xo_steep) %��Ӧ���
[xo_u,fo_u] = fminunc(f,x0); % MATLAB ���ú���fminunc()
[fc_u,fo_u,co_u] = f1209(xo_u) %��Ӧ���
%%  
%%  �ú���fmincon��Լ�����Ż�����
clear all
f=inline('exp(x(1))*(4*x(1)^2+2*x(2)^2+4*x(1)*x(2)+2*x(2)+1)','x');
x0=[-1 1];
[x,fval]=fmincon(f,x0,[],[],[],[],[],[],'fcon1212')
%%   ��fmincon������Լ�������Ż�
clear all
f=inline('-x(1)*x(2)*x(3)','x');
A=[-1,-2,-2;1,2,2]; %A*x<=b
b=[0;72];
x0=[10;10;10];
[x,fval]=fmincon(f,x0,A,b)
%%  
%%����QQ��1960009019
%%���߽���΢�Ź��ںţ�����һƷ��
%%����ţ����߽�������һƷ��
%%һ����Ѷ�ţ�����һƷ��