function [x, arr] = Iter(poly,b,x0,tolerance,max_iter)
%Iter performs iteration method with given function
%f(x)=p(1)x^n+...+p(n)x+p(n+1)+b*sin(nx)on f(x)=x
%   poly - coefficients of polynomial part of the function
%   b - coefficient b*sin(nx)
%   x0 - initial guess
%   tolerance - what is the maximal error
%   max_iter - the max number of iterations
close all;
    function [val] = f(x)
        val = PolyVal(poly,x)+b*sin(n*x);
    end

k=0;
error=tolerance+1;
x=x0;
n=size(poly,2);

while abs(error)> tolerance && k<= max_iter
    old = x;
    x=f(x);
    olderror=error;
    error = old-x;
    if abs(olderror)<=abs(error)
       error('does not converge');
    end
    
    %counting iterations:
    k=k+1;
    arr(k)=x;
end

end
