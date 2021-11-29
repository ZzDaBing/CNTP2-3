function [C,t] = matmat3b(A,B)
tic()
m = size(A)(1)
p = size(A)(2)
n = size(B)(2)
C = zeros(m,n)
for i = 1 : m
for j = 1 : n
for k = 1 : p
C(i,j) = A(i,k) * B(k,j) + C(i,j);
end
end
end
t = toc()
endfunction
