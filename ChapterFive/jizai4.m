% 主程序
clear;clc;  % 清空工作区、清空命令行

a11 = 400;  b11 = -160;  a12 = 300;  b12 = -280;  % 参数赋值
a21 = 350;  b21 = -300;  a22 = 380;  b22 = -200;

[t,y]=ode45(@(t,y) hanshu4(t,y,a11,a21,a12,a22,b11,b21,b12,b22),[0,10],[0.2,0.5]);  % 求解方程的算法，方程运行时间（次数），x、y的初值
p=plot(t,y(:,1),'rh-','linewidth',1,'markersize',5); 
p.MarkerIndices = 1:1:length(y(:,1));  % 表示标记的生成数量，中间的1越大，则标记间隔越大
hold on

[t,y]=ode45(@(t,y) hanshu4(t,y,a11,a21,a12,a22,b11,b21,b12,b22),[0,10],[0.4,0.5]);
 p=plot(t,y(:,1),'mo-','linewidth',1,'markersize',5); 
 p.MarkerIndices = 1:1:length(y(:,1));
hold on

[t,y]=ode45(@(t,y) hanshu4(t,y,a11,a21,a12,a22,b11,b21,b12,b22),[0,10],[0.6,0.5]);
 p=plot(t,y(:,1),'g+-','linewidth',1,'markersize',5); 
 p.MarkerIndices = 1:1:length(y(:,1));
hold on

[t,y]=ode45(@(t,y) hanshu4(t,y,a11,a21,a12,a22,b11,b21,b12,b22),[0,10],[0.8,0.5]);
 p=plot(t,y(:,1),'b>-','linewidth',1,'markersize',5); 
 p.MarkerIndices = 1:1:length(y(:,1));
hold on
grid on;

set(gca,'XTick',[0:0.02:0.2],'YTick',[0:0.1:1])  % [0:坐标轴的单位长度:1]
axis([0 0.2 0 1])  % 横轴、纵轴的范围
xlabel('t');  % 横轴的名字
ylabel('x');  % 纵轴的名字
legend('x=0.2', 'x=0.4', 'x=0.6', 'x=0.8');  % 图例