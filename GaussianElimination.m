function sol = GaussianElimination(A,b)
N = length(A);
A1 = [A b];

for k =1:1:N-1
    if (A1(k,k)==0)
        disp("The pivot is zero");
    end
    
    for i = k+1:1:N
        A1(i,:) = A1(i,:) - (A1(i,k)/A1(k,k))*A1(k,:);
        A(i,:) = A(i,:) - (A(i,k)/A(k,k))*A(k,:);

    end
    
end
for i = 1:1:length(A)
b(i)  = A1(i,length(A1));
end

n = length(b);

sol(n) = b(n)/A(n,n);
for i = n-1:-1:1
sum = 0;
    for j = i+1:1:n
    sum = sum + A(i,j)*sol(j);
    end
   sol(i) = (b(i)-sum)/A(i,i);
   

end

sol = sol';
end
