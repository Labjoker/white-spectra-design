function y = Ginten(x,a1,b1,HW1)
y=a1*exp(-(x-b1).^2*4*log(2)/HW1.^2)/(sqrt(2*pi)/2*HW1/sqrt(2*log(2)));
end
