function approx=arrodonir_clase(x,N)
%Calculam q
%q = floor(log10(abs(x))) + 1;
%Trobam la mantissa
%m = x / power(10,q);
%Arradonim la mantisa
%factor = power(10,t);
%Obtenim el nombre arrodonit
%approx = m * power(10,q);

    s = 0;
    q = 0;

    % COMPROBAMOS EL SIGNO DEL NÚMERO
    if x < 0
        s = 1;
        % CONSIDERAMOS EL VALOR ABSOLUTO DEL NUMERO
        x = -x;
    end

    % COMPROBAMOS SI EL NÚMERO ES MAYOR O MENOR A 1, PARA OPERAR DE DISTINTA
    % FORMA EL CALCULO DEL EXPONENTE
    if x >= 1
        % BUCLE QUE DIVIDE EL NÚMERO ENTRE LA BASE A EXPONENTES CADA VEZ MAYORES
        % HASTA LLEGAR A SER MENOR A 1
        while x >= 1
            x = x / 10;
            q = q + 1;
        end
    elseif x < 1 && x ~= 0
        % BUCLE QUE MULTIPLICA EL NÚMERO POR LA BASE A EXPONENTES CADA VEZ
        % MENORES HASTA LLEGAR A SER MAYOR O IGUAL A 1
        while x * 10 < 1
            x = x * 10;
            q = q - 1;
        end
    elseif x == 0
        % Manejar el caso especial cuando x es cero
        mantisa = 0;
        return
    end

    % CALCULAMOS LA MANTISA
    aux = floor(x * (10^N));

    % Redondeo de la mantisa
    if abs(aux * 10 - floor(x * (10^(N + 1)))) >= 5 % Modificado para redondear al valor más cercano
        mantisa = (aux + 1) / (10^N);
    else
        mantisa = aux / (10^N);
    end


approx=mantisa*power(10,q);
end
