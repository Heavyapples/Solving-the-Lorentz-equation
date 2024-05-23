function dxdt = system_lor(t, x, a, b, N, F0, d, M, G0)
    % 解构输入向量 x
    x_val = x(1);
    y_val = x(2);
    z_val = x(3);

    % 计算 f_N(x) 和 f_M(z)
    fNx_val = f_N(x_val, N, F0, d);
    fMz_val = f_M(z_val, M, G0, d);

    % 计算 dxdt
    dxdt = zeros(3,1);
    dxdt(1) = y_val;
    dxdt(2) = (1 - fMz_val) * x_val - a * y_val;
    dxdt(3) = fNx_val - b * fMz_val;
end
