
%%  �����������   ���ȷֲ�
clear all;
X=unifrnd(2,8,20,3)
[a,b,aci,bci]=unifit(X,0.05)
%%   ָ���ֲ��Ĳ�������
clear all;
X=exprnd(5,20,4)
[parmhat1,parmci1]=expfit(X,0.05)     %���Ŷ�95%
[parmhat2,parmci2]=expfit(X,0.01)
%%  beta�ֲ��Ĳ�������
% 
clear all;
X=betarnd(7,5,100,1);
[phat,pci]=betafit(X,0.02)
%%  ��̬�ֲ��Ĳ�������
% 
clear all;
X=normrnd(10,2,20,3)
[mu1,sigma1,muci1,sigmaci1]=normfit(X,0.05)
[mu2,sigma2,muci2,sigmaci2]=normfit(X,0.01)
%%  
%%   ����QQ��1960009019
%%   ���߽���΢�Ź��ںţ�����һƷ��
%%   ����ţ����߽�������һƷ��
%%   һ����Ѷ�ţ�����һƷ��

