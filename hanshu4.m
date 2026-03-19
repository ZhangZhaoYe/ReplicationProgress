% 主函数
function dydt=hanshu4(t,y,a11,a21,a12,a22,b11,b21,b12,b22)  % 定义函数

dydt=zeros(2,1);  % 二元一次方程组

dydt(1) = -y(1) * (y(1) - 1) * (a12 - a22 + y(2) * (a11 - a12 - a21 + a22));
dydt(2) = -y(2) * (y(2) - 1) * (b21 - a22 + y(1) * (b11 - b12 - b21 + b22));

end