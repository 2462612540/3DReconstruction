%%  ��߳�������
%%   ctrl   +  c  �����жϴ��ͳ����ִ��
%%  ����ʹ��ѭ��
%%  ����������

%%  ���������ֵ
clear all;
x=rand(3,4,5);
tic;
m=x(1,1,1);
for i=1:3
    for j=1:4
        for k=1:5
            if x(i,j,k)>m
                m=x(i,j,k);
            end
        end
    end
end
m
t=toc     %��������ʱ��

%%����QQ��1960009019
%%���߽���΢�Ź��ںţ�����һƷ��
%%����ţ����߽�������һƷ��
%%һ����Ѷ�ţ�����һƷ��
%%  
%%�����Ľ�

clear all;
x=rand(3,4,5);
tic;
switch ndims(x)   %% ��ȡ�����ά��
    case 2
        m=max(max(x));
    case 3
        m=max(max(max(x)));
end
m
t=toc
%%   �ڸĽ� 
clear all;
x=rand(3,4,5);
tic;
m=max(x(:))
t=toc
%% 
%%  Դ����
clear all;
tic;
m=0;
for i=1:10000
    m=m+1/i^2;    
end
m
t=toc
%%  �����������ѭ��
clear all;
tic;
m=0;
i=1:10000;
m=sum(1./i.^2);
m
t=toc
%%  ��û�иĽ���Դ����
clear all;
tic;
for i=1:20000
    for j=1:5
        H(j,i)=1/(i+j-1);
    end
end
toc
%%���������ѭ��������

clear all;
tic;
for i=1:5
    for j=1:20000
        H(i,j)=1/(i+j-1);
    end
end
toc
%%  ���ȸ��������ά��

clear all;
tic;
H=zeros(5,20000);
for i=1:5
    for j=1:20000
        H(i,j)=1/(i+j-1);
    end
end
toc

