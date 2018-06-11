function x = PolyVal(a,z)
n = length(a);
result = a(1);
for j = 2:n
    result = result.*z + a(j);
end
x = result;

