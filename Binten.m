function y = Binten(x,a2,b2,HW2)
y=a2*exp(-(x-b2).^2*4*log(2)/HW2.^2)/(sqrt(2*pi)/2*HW2/sqrt(2*log(2)));
end
