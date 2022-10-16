function y = Rinten(x,a,b,HW)
y=a*exp(-(x-b).^2*4*log(2)/HW.^2)/(sqrt(2*pi)/2*HW/sqrt(2*log(2)));
end

