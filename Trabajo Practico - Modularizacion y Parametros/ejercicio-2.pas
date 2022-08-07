program ejercicio2;

{ Dada una pila DADA que se carga por teclado, eliminar los elementos repetidos que se
encuentran en la pila }

{$INCLUDE /IntroProg/Estructu}

procedure pasaPila(var origen, destino: pila);
begin
    while not pilaVacia(origen) do begin
        apilar(destino, desapilar(origen));
    end;
end;

procedure filtrar(var origen, auxTope, destino, repetidos: pila);
begin
    if not pilaVacia(origen) then begin
        apilar(auxTope, desapilar(origen));
    end;
    
    while not pilaVacia(origen) do begin
        if tope(origen) = tope(auxTope) then begin
            apilar(repetidos, desapilar(origen));
        end else begin
            apilar(destino, desapilar(origen));
        end;
    end;
end;

var dada, auxTope, aux, repetidos, count: pila;
begin
    inicPila(dada, '2 3 1 2 1 3 2 1 2 3 2 1 1 2 3 4 4 4 4');
    inicPila(auxTope, '');
    inicPila(aux, '');
    inicPila(repetidos, '');
    inicPila(count, '');
    
    { Cantidad de numeros diferentes manualmente}
    filtrar(dada, auxTope, aux, repetidos);
    filtrar(aux, auxTope, dada, repetidos);
    filtrar(dada, auxTope, aux, repetidos);
    filtrar(aux, auxTope, dada, repetidos);
    
    pasaPila(auxTope, dada);
    
    writePila(dada);
    writePila(auxTope);
    writePila(aux);
    writePila(repetidos);
    writePila(count);
end.