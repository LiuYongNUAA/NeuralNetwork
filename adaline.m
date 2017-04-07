x1 = linspace(-10,10,200);
x2 = linspace(-10,10,200);

h = [4.0451;1.5451];
R = [5,4.0451;4.0451,5];
fx = [];
for x = x1
    for y = x2
        fx = [fx, 5 - 2 * [x,y] *h + [x,y]*R*[x;y]];
    end
end
fx = reshape(fx,200,200);
k = 0 ;
n = 400;
w = [0,0];
ws = [];
rate = 0.05;

while n >0
    p = [sin((k-1)*pi/5);sin((k-2)*pi/5)];
    a = w * p;
    t = sin(k*pi/5);
    e = t - a ;
    w = w + 2 * rate * e * p';
    ws = [ws;w];
    k = k + 1;
    n = n - 1;
end
hold on
contour(x1,x2,fx);
plot(ws(:,1),ws(:,2));
hold off

        
            
            

     
            
      
    