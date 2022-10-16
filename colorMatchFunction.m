function [x,y,z]=colorMatchFunction(lumda)
x=1.056.*g(lumda,599.8,37.9,31.0)+0.362.*g(lumda,442.0,16.0,26.7)-0.065.*g(lumda,501.1,20.4,26.2);
y=0.821.*g(lumda,568.8,46.9,40.5)+0.286.*g(lumda,530.9,16.3,31.1);
z=1.217.*g(lumda,437.0,11.8,36.0)+0.681.*g(lumda,459.0,26.0,13.8);
end

function y = g(lumda,mu,sigma1,sigma2)
y = exp(-(lumda-mu).^2/(2.*sigma1^2)).*(lumda<mu)+exp(-(lumda-mu).^2/(2.*sigma2^2)).*(lumda>=mu);
end


