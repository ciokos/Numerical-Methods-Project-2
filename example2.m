% f(x)=-0.5x^3+1
p=[-0.5,0,0,1];
[a, arr] = Iter(p,0,1,0.001,10);
disp(arr);
GraphIter(p,0,0.4,1,1,0.001,10)