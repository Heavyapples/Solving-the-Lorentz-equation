% 定义 f_M'(z) 函数
function dfMz = df_M(z, M, G0, d)
    if M >= 2
        error('M must be less than 2.');
    end
    
    Ui = 2 * M * G0;
    dfMz = -G0 * (dg(z, d) - dg(z - Ui, d) + dg(z + Ui, d));
end
