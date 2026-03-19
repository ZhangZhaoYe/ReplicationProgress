%声明变量
syms x y a11 a21 a12 a22 b11 b21 b12 b22 

%复制动态方程组
dx = x*(1 - x)*(y*(a11 - a21 - a12 + a22) + a12 - a22);
dy = y*(1 - y)*(x*(b11 - b21 - b12 + b22) + b21 - a22);

%计算复制动态方程的偏导
dxx = diff(dx,x)
dxy = diff(dx,y)

dyx = diff(dy,x)
dyy = diff(dy,y)

%构造雅可比矩阵
Jacobian=[[dxx, dxy];[dyx, dyy]];

%(0,0)点的特征值
x = 0;
y = 0;

A1=eval(Jacobian)

%(1,0)点的特征值
x = 1;
y = 0;
A2=eval(Jacobian)

%(0,1)点的特征值
x = 0;
y = 1;
A3=eval(Jacobian)
%(1,1)点的特征值
x = 1;
y = 1;
A4=eval(Jacobian)
