%FIR
clc;
clear all;
close all;

fs = 1000;
fc = 500;
w=fc/fs;

n=50;
wn=chebwin(n+1);

b = fir1(n,w,wn);
