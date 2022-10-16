function y = Vfunction( x )
%对Excel中视觉函数数据利用cft工具箱进行高斯拟合，定义为可调用函数
a1 =       1.019;
b1 =       559.1 ;
c1 =       59.19;
y =  a1.*exp(-((x-b1)./c1).^2);
end
%对Excel中视觉函数数据利用cft工具箱进行高斯拟合，定义为可调用函数
