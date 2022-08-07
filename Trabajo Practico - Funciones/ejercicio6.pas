program ejercicio6;

{ Separar de la pila DADA el mayor de sus elementos (si hay más de de uno, separar la primer
ocurrencia, dejando el resto), colocándolo en una variable de tipo entero. La pila queda con un
elemento menos manteniendo el orden original }

{$INCLUDE /IntroProg/Estructu}

function mayor(dada: pila): integer;
var aux: pila;
begin
    inicPila(aux, '');
    
    mayor:= tope(dada);
    desapilar(dada);
    
    while not pilaVacia(dada) do begin
        if tope(dada) >= mayor then begin
            mayor:= tope(dada);
        end;
        apilar(aux, desapilar(dada));
    end;
end;

procedure eliminarMayor(var dada: pila; mayor: integer);
var aux: pila;
begin
    inicPila(aux, '');
    
    while not pilaVacia(dada) do begin
        apilar(aux, desapilar(dada));
    end;
    
    while not pilaVacia(aux) do begin
        if tope(aux) = mayor then begin
            desapilar(aux);
        end else begin
            apilar(dada, desapilar(aux));
        end;
    end;
end;

var dada: pila;
begin
    inicPila(dada, '1 9 2 3 4 5');
    
    writeln(mayor(dada));
    eliminarMayor(dada, mayor(dada));
    
    writePila(dada);
end.