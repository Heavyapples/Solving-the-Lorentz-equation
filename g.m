% 定义 g(x) 函数
function gx = g(x, d)
    gx = x ./ sqrt(d + x.^2);
end