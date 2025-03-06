ErrorAbsolut=zeros(1,100);
ErrorRelatiu=zeros(1,100);
x=1:100;

for i=1:1:100
    ErrorAbsolut(i)=error_absoluto(i);
    ErrorRelatiu(i)=error_relatiu(i);
end

figure();
hold on;
plot(x,ErrorAbsolut,'-k');
plot(x,ErrorRelatiu,'-r');
hold off;


function aux=error_absoluto(M)
    aux=abs(AproximacioPi(M,16,1)-pi);
end

function aux=error_relatiu(M)
    aux=abs(AproximacioPi(M,16,1)-pi)/abs(AproximacioPi(M,16,1));
end
