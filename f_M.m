% 定义 f_M(z) 函数
function fMz = f_M(z, M, G0, d)
    if M >= 2
        error('M must be less than 2.');
    end
    
    Ui = 2 * M * G0;

    fMz = z + 1 - G0 * (g(z, d) + (g(z - Ui, d) + g(z + Ui, d)));
end