% ���������ִ�Сд,ǿ�����������Ȳ�����63λ�����˽��鲻Ҫ����10λ����������ĸ��ͷ
% ��������ĸ�����ֺ��»�����ɣ�������ʹ�ñ��

T = 2;
t=3;
res=T*t*2;

%% ��ʾ�����з��ŵ�����
one=int8(2);
two=int16(-2);

%% ��ʾ���޷�������
three = uint32(20);
four =uint64(80);

%% whos �鿴���еı�����ֵ
whos
%%  �ṹ��
ten.name='this is ten';
%% �ַ���
str ='woshi ';
%% �����ľ��
elven=@cos;
%% �������n*m ��0��1֮��%����
%% �����м��� size�������������
juzhen=rand(6,9);
rows=size(juzhen ,1);
clos=size(juzhen,2);

%% �ַ�
str='a';
abs(str)
res1=num2str(65);%��ʾ��������תΪ���ַ���
doc num2str%���������ú����� �鿴APi�Ľ���ǵ�doc num2str

str2='i am zhuang xiao yan ';
length(str2)


%% �����ѧϰ
A=[6 6 2;6 5 6;8 7 9];
B = A'; %��ʾ����A��ת�þ���
C=A(:);%��ʾ���Ϊһ��
D=inv(A); %��ʾ������������
E=A * D; %��ʾ���ǵľ�������

%%
%Ԫ����������ѧϰ���õ���ʱ����������Ҳ��
F = cell(1,6); %1�� 6�е�һ��Ԫ������
F{2}= eye(3);%��ʾ��������һ��n*n��һ������
F{5}=magic(5);%��ʾ�������ǵ�5*5ħ��һ������
H=A{5};

%%
%�ṹ��ı�ʾʹ��ѧϰ
books=struct('name',{{'daxin','daasheng'}},'price',[30 40]);
books.name;
books.name(1);
books.name{1}

%%
%�������͵�ת��
shu=66;
shu8=int8(shu);
shu16=int16(shu);

%��ֵȡ��
num=89.635;
roud0=round(num); %��ӽ�ȡ����0.5Ϊ�ٽ�����
roud1=round(8.5);
roud2=round(-6.4);
roud3=round(-6.5);

fix1=fix(-1.5); %��ʾ����0ȡ��
fix2=fix(-1.6); 

floor1=floor(2.7);% С�ڻ����ǵ��ڸ����Ľӽ�������
floor2=floor(-2.4);

ceil1=ceil(4.2); %���ڻ����ǵ��ڸ����Ľӽ�����
ceil2=ceil(-4.4);
%%
%������ѧϰ
fushu=3+4i;
reall1=real(fushu); %�����Ǹ�����ʵ��
imag1=imag(fushu);%�����Ǹ������鲿
abs1=abs(fushu); %��⸴����ģ��
angle1=angle(fushu);%��⸴���ĽǶ�

gonge=conj(fushul) ;%�����Ĺ�������

fushuduo=complex(1:3,2:4);
imageduo=imag(fushuduo);






