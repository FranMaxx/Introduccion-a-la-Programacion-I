program ejercicio7;

{ Pasar los elementos de la pila DADA que sean mayores o iguales que el tope
  de LIMITE a la pila MAYORES, y los elementos que sean menores a la pila MENORES }

{$INCLUDE /IntroProg/Estructu}

var DADA, LIMITE, MAYORES, MENORES: pila;

begin

    inicPila(DADA, '1 2 3 4 5 6 7 8 9 10');
    inicPila(LIMITE, '5');
    inicPila(MENORES, '');
    inicPila(MAYORES, '');
    
    while not pilaVacia(DADA) do begin
    
        if (tope(DADA) >= tope(LIMITE)) then begin
            apilar(MAYORES, desapilar(DADA));
        end else begin
            apilar(MENORES, desapilar(DADA));
        end;
        
    end;
    
    writePila(DADA);
    writePila(LIMITE);
    writePila(MENORES);
    writePila(MAYORES);
    
    {
        7.1) Si DADA está vacía no funcionara.
    }
    
end.