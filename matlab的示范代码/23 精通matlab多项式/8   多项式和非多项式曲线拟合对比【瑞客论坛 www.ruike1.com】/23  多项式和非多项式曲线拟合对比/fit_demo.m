% �������
%%����QQ��1960009019
%%���߽���΢�Ź��ںţ�����һƷ��
%%����ţ����߽�������һƷ��
%%һ����Ѷ�ţ�����һƷ��
%% ����ʽ������Һ�������
% ԭʼ���ݵ�
x0 = -pi:0.1:pi;
y0 = sin(x0);
% 4�ζ���ʽ���
p0 = polyfit(x0, y0, 4);
y1 = polyval(p0, x0);
plot(x0, y0, x0, y1, 'r');

%% ����ʽ���Ч��
% �״�Խ�ߣ�����һ�����Ч��Խ��
x1 = -1:0.2:1;
y1 = 1./(1 + 25*x1.^2);
% �ֱ�ʹ��3�Ρ�5�Ρ�8�ζ���ʽ���
p3 = polyfit(x1, y1, 3);
p5 = polyfit(x1, y1, 5);
p8 = polyfit(x1, y1, 8);

x  = -1:0.01:1;
y  = 1./(1 + 25*x.^2);
y3 = polyval(p3, x);
y5 = polyval(p5, x);
y8 = polyval(p8, x);
figure
plot(x, y, x, y3, 'r-', x, y5, 'm:', x, y8, 'b--');
legend('ԭʼ', '3��', '5��', '8��');

%% ʹ�÷Ƕ���ʽ��Ϸ���
% ���Ƚ������ѡ��ṹ��
options = fitoptions('Method', 'NonlinearLeastSquare');
options.Lower = [-Inf, -Inf, -Inf];
options.Upper = [Inf, Inf, Inf];
% ͨ��fittype�������������ģ��
type    = fittype('a/(b + c*x^n)', 'problem', 'n', 'options', options);
% ���
[cfun gof] = fit(x1', y1', type, 'problem', 2);
% ���Ч��
ynp = feval(cfun, x);
figure
hl = plot(x, y, 'k');
set(hl, 'LineWidth', 5);
hold on
plot(x, ynp, 'r');