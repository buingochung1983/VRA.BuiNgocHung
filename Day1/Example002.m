function [ output_args ] = Example002( input_args )
%UNTITLED3 Summary of this function goes  
%   Detailed explanation goes heree
strMessage = '\n nhap m:';
m = input(strMessage);
strMessage = '\n nhap n:';
n = input(strMessage);
a = ones(m,n)
b = zeros(m,n)
c = eye(m,n)
d = randi([-10,10],m,n)
a(1,1) = 5
e= size(a)
end 

