%plot(xm,ym)

for a= 2:1942
    difx(a)   = xm(a) - xm((a-1));
    dify(a)   = ym(a) - ym((a-1));    
    %disp(difx)
end
drv = dify ./ difx;

for i= 2:1942
    alfa1 = atan(drv(i));
    alfa2 = atan(drv(i-1));
    delta_ang(i) = alfa1 -alfa2;
    drvdif(i) = drv(i) -drv((i-1));
end

%plot(difx(1:100),dify(1:100))
f1 =figure;
plot(xm,delta_ang)
f2=figure;
plot(distancem,delta_ang)