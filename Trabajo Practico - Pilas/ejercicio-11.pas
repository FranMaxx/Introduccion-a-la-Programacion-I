program ejercicio11;

{ Repartir los elementos de la pila pozo en las pilas jugador1 y jugador2 en
  forma alternativa
}

{$INCLUDE /IntroProg/Estructu}

var pozo, jugador1, jugador2, aux2: pila;

begin

    inicPila(pozo, '1 2 3 4 5 6 7');
    inicPila(jugador1, '');
    inicPila(jugador2, '');
    
    while not pilaVacia(pozo) do begin
    
        if not pilaVacia(pozo) then begin
            apilar(jugador1, desapilar(pozo));
        end;
        
        if not pilaVacia(pozo) then begin
            apilar(jugador2, desapilar(pozo));
        end;
        
    end;
    
    writePila(jugador1);
    writePila(jugador2);
    
end.