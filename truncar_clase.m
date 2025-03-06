function approx=truncar_clase(x,t)
%Calculamos q
q=floor(log10(abs(x))) + 1;
%Trobam la mantissa
m = x / power(10,q);
%Truncamos la mantissa
m_trunc=fix(m*(power(10,t)))/power(10,t);
%Obtenim el nombre truncar
approx=m_trunc*power(10,q);
end
