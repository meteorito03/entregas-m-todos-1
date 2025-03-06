N=[4,8,10,16];
M=[10,100,1000,10000];

errors_abs = zeros(length(N),length(M));
errors_rel = zeros(length(N),length(M));

for i=1:1:length(N)
    for j=1:1:length(M)
        %AproximacioPi(M(j),N(i),0)
        errors_abs(i,j)= abs(AproximacioPi(M(j),N(i),1)-pi);
        errors_rel(i,j)=errors_abs(i,j)/abs(AproximacioPi(M(j),N(i),1));
    end
end

disp(errors_abs)
disp(errors_rel)
