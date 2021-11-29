function [C,t] = matmat1b(A,B)
tic()
m = size(A)(1)
n = size(B)(2)
C = zeros(m,n)
for i = 1 : m
C(i,:) = A(i,:) * B + C(i,:);
end
t = toc()
endfunction