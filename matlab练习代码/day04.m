%% ѧϰĿ��:����ѧϰ�ṹ�����
%% �����ṹ�����
clear all;
s1=struct('fengge',{'big','little'}, 'yanse', {' blue' }, 'shuju', {[8 8 9;7 6 5] [1:9]});
diyi=s1(1);
dier=s1(2);
%%�Dɾ���ṹ���Ա����
shan2 = rmfield(s1, 'yanse');  
shan2and3=rmfield(s1,{' yanse','shuju'});

%% �жϵ��ǲ��ǵĽṹ�� 
clear all
s=struct('hehe',1,'hah',2);
f1=isstruct(s);
f2=isfield(s,'hehe');                                             %�Ƿ�Ϊ��Ա�ı���

%% ����ĳ�ַ�ʽ��ȡ��Ա����
clear all;
s=struct('da', 0,'xian',1, 'yi',2,'pin',3);
f1=fieldnames(s);                                               %��ȡ��Ա����������
f2=orderfields(s);                                               %���ճ�Ա��������ĸ˳������

%% ��ȡ�����ĳ��ʵ�ʳ�Ա������ֵ
clear all;
s=struct('xingming', {' daxian' , ' dashen'}, 'xingbie', {'nan', 'nv' },'fenshu', [67 90 99]);
s(1).xingming
s(1).xingbie
s(1).fenshu
s(1).fenshu(3)
pingjunfen=mean(s(1).fenshu);
zuigaofen=max(s(1).fenshu);

%% ʹ�ú�������ȡ��Ա������ֵ
clear all;
s1=struct(' haha',8, ' hehe',9);
f1=getfield(s1,'haha');

%% ʹ�ú������Գ�Ա�������¸�ֵ
clear all;
s1=struct('haha',7,'heh',8);
s2=setfield(s1,'haha',9);                                     %ʵ�ֶԽṹ���Ա�����¸�ֵ





