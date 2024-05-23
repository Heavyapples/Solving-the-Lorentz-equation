% 定义洛伦茨
function Lorentz = lor(t, x, a, b, N, F0, d)
    Lorentz = zeros(3,1);
    Lorentz(1) = x(2); % dx/dt = y
    Lorentz(2) = (1 - x(3)) * x(1) - a * x(2); % dy/dt = (1 - z) * x - a * y
    Lorentz(3) = f_N(x(1), N, F0, d) - b * x(3); % dz/dt = f_N(x) - b * z
end
