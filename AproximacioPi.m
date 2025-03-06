function barPI = AproximacioPi(S, N, Aritmetica)
    %Si queremos usar truncamiento, como parametro Aritmetica introduciremos 1,
    %Si queremos usar redondeo, como parametro Aritmetica introduciremos 0
   
    %Inicializamos la variable donde iremos guardando la aproximación de pi en 0
    barPI=0;
    %Inicializamos una variable auxiliar para calcular los N terminos de la suc.
    aux=0;
    
    %Según la aritmetica, realizamos el metodo para calcular los terminos de la 
    %serie parcial con truncamiento o redondeo
    if Aritmetica==1;
        
        %Bucle para calcular los terminos de la serie parcial
    for k=0:1:S        
        aux = truncar_clase(aux + truncar_clase(truncar_clase(power(-1, k),N)/(truncar_clase(2*k+1,N)), N), N);
    end
    
    %Multiplicamos la aproximacion por 4 como dice la formula dada
    barPI=truncar_clase(aux*4, N);
    
    else
    
        %Bucle para calcular los terminos de la serie parcial
        for k=0:1:S
            aux = arradonir_clase(aux + arradonir_clase(power(-1, k)/arradonir_clase((2*k+1),N), N),N);
        end
        
        %Multiplicamos la aproximacion por 4, como dice la formula dada
        barPI=arradonir_clase(aux*4,N);
    end
    
    
end
