program ejercicio10;

{ Eliminar de la pila dada todos los elementos que sean iguales a el tope de
  la pila modelo
}

{$INCLUDE /IntroProg/Estructu}

var dada, modelo, aux: pila;

begin

    inicPila(modelo, '6');
    inicPila(dada, '1 2 3 4 5 6 7');
    inicPila(aux, '');
    
    while not pilaVacia(dada) do begin 
        if tope(dada) = tope(modelo) then begin
            desapilar(dada);
        end else begin
            apilar(aux, desapilar(dada));
        end;
    end;
    
    while not pilaVacia(aux) do begin
        apilar(dada, desapilar(aux));
    end;
    
    writePila(dada);
    
end.