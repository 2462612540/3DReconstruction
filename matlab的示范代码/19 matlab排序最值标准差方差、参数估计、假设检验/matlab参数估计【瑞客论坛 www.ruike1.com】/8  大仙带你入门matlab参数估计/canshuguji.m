
%%  区间参数估计   均匀分布
clear all;
X=unifrnd(2,8,20,3)
[a,b,aci,bci]=unifit(X,0.05)
%%   指数分布的参数估计
clear all;
X=exprnd(5,20,4)
[parmhat1,parmci1]=expfit(X,0.05)     %置信度95%
[parmhat2,parmci2]=expfit(X,0.01)
%%  beta分布的参数估计
% 
clear all;
X=betarnd(7,5,100,1);
[phat,pci]=betafit(X,0.02)
%%  正态分布的参数估计
% 
clear all;
X=normrnd(10,2,20,3)
[mu1,sigma1,muci1,sigmaci1]=normfit(X,0.05)
[mu2,sigma2,muci2,sigmaci2]=normfit(X,0.01)
%%  
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂

