program Reemplazar;

{ Reemplazar todos los elementos de origen que sean igual al tope de modelo por
  el tope de reemplazo
}

{$INCLUDE /IntroProg/Estructu}

var origen, modelo, reemplazo, aux: pila;

begin

    inicPila(origen, '1 2 3 4 5 6 7 8 9 10');
    inicPila(modelo, '5');
    inicPila(reemplazo, '10');
    inicPila(aux, '');
    
    while not pilaVacia(origen) do begin
        if tope(origen) = tope(modelo) then begin
            desapilar(origen);
            apilar(origen, tope(reemplazo));
        end else begin
            apilar(aux, desapilar(origen));
        end;
    end;
    
    while not pilaVacia(aux) do begin
        apilar(origen, desapilar(aux));
    end;
    
    writePila(origen);
    
end.