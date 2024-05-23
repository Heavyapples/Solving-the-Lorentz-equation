% 参数设定
a = 0.75;
b = 0.45;
N = 2; 
F0 = 2;
d = 0.001; 
M = 1;
G0 = 1.5;

% 设定初始条件
x0 = [0.1; 0.1; 0.1];

% 解决洛伦茨方程
tspan = [0, 100];
[t, x] = ode45(@(t, x) lor(t, x, a, b, N, F0, d), tspan, x0);

% 绘制3D相图
figure;
plot3(x(:,1), x(:,2), x(:,3));
xlabel('x');
ylabel('y');
zlabel('z');
title('Lorentz Attractor');
grid on;

% 绘制x-y平面图
figure;
plot(x(:,1), x(:,2));
xlabel('x');
ylabel('y');
title('Lorentz Attractor (x-y plane)');
grid on;

% 绘制x-z平面图
figure;
plot(x(:,1), x(:,3));
xlabel('x');
ylabel('z');
title('Lorentz Attractor (x-z plane)');
grid on;

% 绘制y-z平面图
figure;
plot(x(:,2), x(:,3));
xlabel('y');
ylabel('z');
title('Lorentz Attractor (y-z plane)');
grid on;

% 解决定制的system方程
[t_system, x_system] = ode45(@(t, x) system_lor(t, x, a, b, N, F0, d, M, G0), tspan, x0);

% 绘制3D相图
figure;
plot3(x_system(:,1), x_system(:,2), x_system(:,3));
xlabel('x');
ylabel('y');
zlabel('z');
title('Customized System Attractor');
grid on;

% 绘制x-y平面图
figure;
plot(x_system(:,1), x_system(:,2));
xlabel('x');
ylabel('y');
title('Lorentz Attractor (x-y plane)');
grid on;

% 绘制x-z平面图
figure;
plot(x_system(:,1), x_system(:,3));
xlabel('x');
ylabel('z');
title('Lorentz Attractor (x-z plane)');
grid on;

% 绘制y-z平面图
figure;
plot(x_system(:,2), x_system(:,3));
xlabel('y');
ylabel('z');
title('Lorentz Attractor (y-z plane)');
grid on;
