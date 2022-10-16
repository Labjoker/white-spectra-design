function y = inten( x,a,a1,a2,b,b1,b2,HW ,HW1,HW2)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
y = a*exp(-(x-b).^2*4*log(2)/HW.^2)/(sqrt(2*pi)/2*HW/sqrt(2*log(2)))+...
    +a1*exp(-(x-b1).^2*4*log(2)/HW1.^2)/(sqrt(2*pi)/2*HW1/sqrt(2*log(2)))+...
    +a2*exp(-(x-b2).^2*4*log(2)/HW2.^2)/(sqrt(2*pi)/2*HW2/sqrt(2*log(2)));
end

