% 参数设定
a = 0.75;
b = 0.45;
N = 2; 
F0 = 2;
d = 0.001; 
M = 1;
G0 = 1.5;

% 输入范围
x_range = linspace(-10, 10, 100);

% 用于计算李亚普诺夫指数的迭代次数
n_iter = 1000;

% 初始化李亚普诺夫指数数组
LE_fN = zeros(size(x_range));
LE_fM = zeros(size(x_range));

% 对每个输入值计算李亚普诺夫指数
for k = 1:length(x_range)
    x0 = x_range(k);
    fN_vals = zeros(n_iter, 1);
    fM_vals = zeros(n_iter, 1);
    
    % 初始化
    fN_vals(1) = f_N(x0, N, F0, d);
    fM_vals(1) = f_M(x0, M, G0, d);
    
    % 进行迭代
    for i = 2:n_iter
        fN_vals(i) = f_N(fN_vals(i - 1), N, F0, d);
        fM_vals(i) = f_M(fM_vals(i - 1), M, G0, d);
    end
    
    % 计算李亚普诺夫指数
    LE_fN(k) = sum(log(abs(df_N(fN_vals, N, F0, d)))) / n_iter;
    LE_fM(k) = sum(log(abs(df_M(fM_vals, M, G0, d)))) / n_iter;
end

% 绘制 f_N 的李亚普诺夫指数
figure;
plot(x_range, LE_fN);
xlabel('x');
ylabel('Lyapunov Exponent');
title('Lyapunov Exponents for f_N');
grid on;

% 绘制 f_M 的李亚普诺夫指数
figure;
plot(x_range, LE_fM);
xlabel('z');
ylabel('Lyapunov Exponent');
title('Lyapunov Exponents for f_M');
grid on;
