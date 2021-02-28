% 曲线拟合
%%大仙QQ：1960009019
%%在线教育微信公众号：大仙一品堂
%%大鱼号：在线教育大仙一品堂
%%一点资讯号：大仙一品堂
%% 多项式拟合正弦函数曲线
% 原始数据点
x0 = -pi:0.1:pi;
y0 = sin(x0);
% 4次多项式拟合
p0 = polyfit(x0, y0, 4);
y1 = polyval(p0, x0);
plot(x0, y0, x0, y1, 'r');

%% 多项式拟合效果
% 阶次越高，并不一定拟合效果越好
x1 = -1:0.2:1;
y1 = 1./(1 + 25*x1.^2);
% 分别使用3次、5次、8次多项式拟合
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
legend('原始', '3次', '5次', '8次');

%% 使用非多项式拟合方法
% 首先建立拟合选项结构体
options = fitoptions('Method', 'NonlinearLeastSquare');
options.Lower = [-Inf, -Inf, -Inf];
options.Upper = [Inf, Inf, Inf];
% 通过fittype建立非线性拟合模型
type    = fittype('a/(b + c*x^n)', 'problem', 'n', 'options', options);
% 拟合
[cfun gof] = fit(x1', y1', type, 'problem', 2);
% 拟合效果
ynp = feval(cfun, x);
figure
hl = plot(x, y, 'k');
set(hl, 'LineWidth', 5);
hold on
plot(x, ynp, 'r');