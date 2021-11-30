function [L,U] = mylu3b(A)
n = size(A)(1)
for k = 1 : n-1
    for i = k + 1 : n
        A(i,k) = A(i,k)/A(k,k);
    end
    for i = k + 1 : n
        for j = k + 1 : n
            A(i,j) = A(i,j) - A(i,k) * A(k,j);
        end
    end
end
L = tril(A);
U = triu(A);
for i = 1 : n
    L(i,i) = 1;
end
endfunction

function [L,U] = mylu1b(A)
n = size(A)(1)
for k = 1 : n-1
    A(k+1:n,k) = A(k+1:n,k)/A(k,k);
    A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k) * A(k,k+1:n);
end
L = tril(A);
U = triu(A);
for i = 1 : n
    L(i,i) = 1;
end
endfunction

//function [L,U,P] = mylu(A)
//[piv,ind] = max(abs(A(k : n,k))); // récupère le max piv à la ligne ind
//du vecteur colonne sous l’élément diagonal A(k,k)
//2: ind = k −1 + ind; // convertit l’indice local en un indice global de la
//ligne à échanger.
//3: q = row(1,ind);
//4: if ind 6= k then
//5: new = A(ind,:); // stockage temporaire de la ligne à échanger dans
//le vecteur new
//5':A(k,:) = new;
//6: A(ind,:) = A(k,:); // échange
//7: row(1,ind) = row(1,k); et row(1,k) = q; // mise à jour du vecteur
//des permutations
//8: end if
//9: end
