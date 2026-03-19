% 攻击方的复制动态方程
syms x y a11 a21 a12 a22 b11 b21 b12 b22  % 定义期望收益、复制动态方程里用到的参数
dx = x*(1 - x)*(y*(a11 - a21 - a12 + a22) + a12 - a22);
fx = simplify(dx)  % 化简复制动态方程

% 防御方的复制动态方程
dy = y*(1 - y)*(x*(b11 - b21 - b12 + b22) + b21 - a22);
fy = simplify(dy)
