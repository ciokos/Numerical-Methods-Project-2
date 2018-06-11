% f(x)=0.5+sin(x)
p=0.5;
[a, arr] = Iter(p,1,0.2,0.001,10);
disp(arr);
GraphIter(p,1,0,2,0.2,0.001,10)