function [ output_args ] = Example001( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

a= rand();
fprintf('\n...[%8.3f]',a);

rArray = randi([-10 10],1,10);
fprintf('\n...%d.',size(rArray,2));
fprintf('\n Mang duoc tao la :');
fprintf('[%2d]',rArray);
end

 