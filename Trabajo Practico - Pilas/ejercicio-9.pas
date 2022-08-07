program ejercicio9;

{ Pasar el ultimo elemento de la pila dada a su primera posición (tope), dejando
  los elementos restantes en el mismo orden
}

{$INCLUDE /IntroProg/Estructu}

var dada, aux1, aux2: pila;

begin

    inicPila(dada, '6 9 10');
    inicPila(aux1, '');
    inicPila(aux2, '');
    
    while not pilaVacia(dada) do begin
        apilar(aux1, desapilar(dada));
    end;
    
    apilar(dada, desapilar(aux1));
    
    while not pilaVacia(aux1) do begin
        apilar(aux2, desapilar(aux1));
    end;
    
    apilar(aux1, desapilar(dada));
    
    while not pilaVacia(aux2) do begin
        apilar(dada, desapilar(aux2));
    end;
    
    apilar(dada, desapilar(aux1));
    
    writePila(dada);
    
end.