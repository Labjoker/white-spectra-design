
clc
clear all
I=zeros(1000,0);
R=zeros(1000,0);
E=zeros(1000,0);
F=zeros(1000,0); 
X1=zeros(1000,0);
Y1=zeros(1000,0);
LAR=zeros(1000,0);
LAG=zeros(1000,0);
LAB=zeros(1000,0);
%对用到的矩阵进行初始化，内存预分配
lumda=(380:1:780);
[x,y,z]=colorMatchFunction(lumda);
for i=430:1:460
    for j=510:1:540
       for k=610:1:640
           x1=sum(x.*Rinten(lumda,1.8,k,30).*1);
           y1=sum(y.*Ginten(lumda,1.6,j,30).*1);
           z1=sum(z.*Binten(lumda,1,i,30).*1);
% x1=sum(Rmatch(x).*Rinten(x,1.8,k,20).*1);
% y1=sum(Gmatch(x).*Ginten(x,1.6,j,20).*1);
% z1=sum(Bmatch(x).*Binten(x,1,i,20).*1);
X=x1./(x1+y1+z1)
Y=y1./(x1+y1+z1)
% 计算色坐标x和y的值
 if X>=0.330&&X<=0.334
      if Y>=0.330&&Y<=0.334
        %      判断X和Y是否满标准白光范围
X1=horzcat(X1,X);
Y1=horzcat(Y1,Y);
% 把所有符合白光范围的色坐标合并为一个矩阵
LAR=horzcat(LAR,i);
LAG=horzcat(LAG,j);
LAB=horzcat(LAB,k);
% 将满足白光范围的光谱矩阵储存起来
f=683*sum(Vfunction( lumda ).*inten(lumda,1.8,1.6,1,i,j,k,30,30,30).*1);
%视觉函数和光谱函数的乘积的积分值
r=sum(inten(lumda,1.8,1.6,1,i,j,k,30,30,30).*1);
% 光谱函数的积分值
e=f/r;
% 计算效率值
E= horzcat(E,e);
%将效率值合并成一个矩阵
     end
 end

        end
    end
end
LA=[LAR;LAG;LAB;X1;Y1;E];
%将三个光分量波长的中心波长，色坐标，效率合并成一个矩阵方便观察对比
