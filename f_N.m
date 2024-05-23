% 定义 f_N(x) 函数
function fNx = f_N(x, N, F0, d)
    if N >= 4
        error('N must be less than 4.');
    end
    
    E = (1:N) + 1.2;
    F = 2 * E;
    
    sum_term = 0;
    for i = 1:N
        sum_term = sum_term + F(i) * (g(x - E(i), d) - g(x + E(i), d) + 2);
    end
    fNx = F0 * x.^2 - 3.55 - sum_term;
end
