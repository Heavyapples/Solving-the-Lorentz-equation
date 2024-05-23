% 定义 g'(x) 函数
function dgx = dg(x, d)
    dgx = d ./ (d + x.^2).^(3/2);
end