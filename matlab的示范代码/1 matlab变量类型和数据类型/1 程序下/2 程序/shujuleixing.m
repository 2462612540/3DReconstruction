%%ѧϰĿ�꣺ 1 �������͵�ǿ��ת������ֵ��Χ
%%          2 ȡ��������ʹ��ѧϰ
%%          3 ������ʹ��ѧϰ
%%  
clear all;
%%  
shu=66;                            %˫���ȸ����ͣ�ǿ��ת��������
shu8=int8(shu)
shu16=int16(shu)
shu32=int32(shu)
shu64=int64(shu)
zifuchuan='daxian'
huan1=int8(zifuchuan)
%% ѧ�����ã�whos  һ��
%%
fudian=14.89                        %Ĭ����˫���ȸ�����
fusingle=single(fudian)             %ת���ɵ����ȸ�����
fudouble=double(fudian)             %ת����˫���ȸ�����
%% �鿴�������͵���ֵ��Χ
singlefanwei=[realmin('single') realmax('single')]
doublefanwei=[realmax('double') realmax('double')]
%%  ��ֵ��ȡ��
round1=round(8.5)                    %��ӽ�ȡ����0.5Ϊ�ٽ�����
round2=round(-6.4)
round3=round(-6.5)
fix1=fix(-1.6)                        %��0ȡ��
fix2=fix(-1.5)
floor1=floor(2.7)                      %С�ڻ��ߵ��ڸ����Ľӽ�����   
floor2=floor(-2.4)
ceil1=ceil(4.2)                           %���ڻ��ߵ��ڸ����Ľӽ�����
ceil2=ceil(-4.4)     
%%  ������ѧϰ
fushu1=3+4i   
real1=real(fushu1)                             %������ʵ��
imag1=imag(fushu1)                             %�������鲿
abs1=abs(fushu1)                              %������ģ
angle1=angle(fushu1)                            %�����ĽǶ�
gonge=conj(fushu1)                             %�����Ĺ����
fushuduo=complex(1:3,2:4)                
realduo=real(fushuduo)
imagduo=imag(fushuduo)
%%   
%%����QQ��1960009019
%%���߽���΢�Ź��ںţ�����һƷ��
%%����ţ����߽�������һƷ��
%%һ����Ѷ�ţ�����һƷ��
%%2018/3/17  ¼�ƣ���ӭָ��
