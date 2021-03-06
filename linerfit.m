x=[14.7	14.75	14.8	14.85	14.9	14.95	15	15.05	15.1	15.15	15.2	15.25	15.3	15.35	15.4	15.45	15.5	15.55	15.6	15.65	15.7
];
y=[1.1496 	1.1822 	1.2153 	1.2491 	1.2832 	1.3180 	1.3534 	1.3894 	1.4262 	1.4634 	1.5015 	1.5402 	1.5799 	1.6201 	1.6613 	1.7033 	1.7462 	1.7901 	1.8350 	1.8809 	1.9279 
];
a1=polyfit(x,y,1);
a2=polyfit(x,y,2);
a3=polyfit(x,y,3);
a4=polyfit(x,y,4);
x1=[11:0.05:16];
y1=a1(2)+a1(1)*x1;
y2=a2(3)+a2(2)*x1+a2(1).*x1.*x1;
y3=a3(4)+a3(3)*x1+a3(2).*x1.*x1+a3(1).*x1.*x1.*x1;
y4=a4(5)+a4(4)*x1+a4(3).*x1.*x1+a4(2).*x1.*x1.*x1+a4(1).*x1.*x1.*x1.*x1;
plot(x,y,'*');
hold on
plot(x1,y1,'b--',x1,y2,'k')%,x1,y3,'-s');
legend('原始数据','一次拟合','二次拟合')%,'三次拟合');
xlabel('');
ylabel('');
p1=polyval(a1,x);%拟合值
p2=polyval(a2,x);
p3=polyval(a3,x);
v1=y-p1;%误差
v2=y-p2;
v3=y-p3;
sor2=[abs(v2./y)*100]';
pp2=p2';
s1=norm(v1,'fro');%f范数
s2=norm(v2,'fro');
s3=norm(v3,'fro');
fprintf('z=%.4ft^3+%.4ft^2+%.4ft+%.4f\n',a3(1),a3(2),a3(3),a3(4));
fprintf('z=%.4ft^2+%.4ft+%.4f\n',a2(1),a2(2),a2(3));
fprintf('z=%.4ft+%.4f\n',a1(1),a1(2));