A = [ 1 2 ;
      3 4 ];
  
B = [ 1 3 ;
      2 4 ];

Asize = size(A);
Bsize = size(B);

m = Asize(1);
n = Asize(2);
p = Bsize(2);

result = zeros(m,p);
num_mult = 0;

for k = (1:n)
    col = A(:,k);
    row = B(k,:);
    temp = zeros(m,p);
    for i = (1:m)
        for j = (1:p)
            temp(i,j) = col(i)*row(j);
            num_mult = num_mult + 1;
        end
    end
    result = result + temp;
end

result
num_mult