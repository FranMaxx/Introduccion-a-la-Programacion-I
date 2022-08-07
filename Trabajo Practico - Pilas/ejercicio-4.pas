program ejercicio4;

{ Pasar a la pila distintos todos los elementos distintos a 8 }

{$INCLUDE /IntroProg/Estructu}

var dada, distintos, aux: pila;

begin

 readPila(dada);
 inicPila(distintos, '');
 inicPila(aux, '');
 
 while not pilaVacia(dada) do begin 
    if tope(dada) <> 8 then begin
        apilar(distintos, desapilar(dada));
    end else begin
        apilar(aux, desapilar(dada));
    end;
 end;
 
 while not pilaVacia(aux) do begin
    apilar(dada, desapilar(aux));
 end;
 
 writePila(dada);
 writePila(distintos);
 
end.