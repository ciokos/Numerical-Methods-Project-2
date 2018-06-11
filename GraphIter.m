function [] = GraphIter(poly,b,left,right,x0,tolerance,max_iter)

    function [val] = f(x)
        val = PolyVal(poly,x)+b*sin(n*x);
    end
close all;
k=0;
error=tolerance+1;
x=x0;
n=size(poly,2);

xlin = left:0.001:right;
figure()
ylin = xlin;
plot(xlin, ylin, 'b-', 'LineWidth',2)
hold on
plot(xlin, f(xlin), 'r-', 'LineWidth',2)
xlabel('    x   ')
ylabel(' y   ')
axis('normal')
legend('y=x','y=f(x)','AutoUpdate','off')

while abs(error)> tolerance && k<= max_iter
    old = x;
    x=f(x);
    olderror=error;
    error = old-x;
    if abs(olderror)<=abs(error)
       close all;
       error('does not converge');
       return;
    end
    plot([old f(old)], [x x])
    plot([x x], [x f(x)])
    %counting iterations:
    k=k+1;
end

end
