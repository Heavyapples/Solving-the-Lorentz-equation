% 定义 f_N'(x) 函数
function dfNx = df_N(x, N, F0, d)
    if N >= 4
        error('N must be less than 4.');
    end
    
    E = (1:N) + 1.2;
    F = 2 * E;
    
    sum_term = 0;
    for i = 1:N
        sum_term = sum_term + F(i) * (dg(x - E(i), d) - dg(x + E(i), d));
    end
    dfNx = 2 * F0 * x - sum_term;
end
