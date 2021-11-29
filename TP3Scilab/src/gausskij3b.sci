function [x] = gausskij3b(A,b)
n = size(A)(1)
for k = 1 : n-1
for i = k + 1 : n
mik = A(i,k)/A(k,k);
b(i) = b(i) - mik * b(k);
for j = k + 1 : n
A(i,j) = A(i,j) - mik * A(k,j);
end
end
end
exec("Bureau/usolve.sci", 1)
[x] = usolve(A,b);
endfunction