%% ѧϰĿ��:���ո߼��ľ���֪ʶ
%% �����͹��������
clear all��
A=magic(4)
B=[2 4;6 4];
C=inv(A);%��ʾ�����ľ������
D=inv(B)
E=pinv(B)%��������
F=B*D*B;%��ʾ���ǵĹ��������

%% �������� ����������й�ϵ ��ӳ�����Ƿ���������� �����������޹�
clear all;
A=magic(4);
B=[5 4 3;1 2 3;7 7 7];
r1=rank (A);
r2=rank(B);


%% ����ļ� �Խ���Ԫ��֮�� ����ֵ֮��
clear all;
A=magid(4);
t1=trace(A);
eig(A);
t2=sum(eig(A));

%% ����ķ���Ĭ����2���� 1 ������Ҫ ������շ����Ļ�����ѧ֪ʶ
clear all;
A=[1 1 1;3 3 3;2 7 7];
n1=norm(A, 1);
n2=norm(A);
n3=norm(A,inf);

%% ������ƽ����
clear all;
A=[4 4 4;6 6 6;6 7 8];
X=sqrtm(A);
B=X*X;

%% ������ָ������Ȼ����
X1=expm(A)
Y1=logm(X1)

%% ϡ�����clear all;
A=rand(4,3)>0.4
S=sparse(A);
n1=nnz(S)%ͳ��ϡ�����ķ���ĸ���
spy(S)%�Է����Ԫ�صķֲ�����ͼ�λ���ʾ
whos;

%% ��λϡ�����
clear all;
A=speye(4)
C=full(A)




