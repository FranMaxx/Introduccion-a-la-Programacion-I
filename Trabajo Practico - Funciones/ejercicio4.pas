program ejercicio4;

{ Dada una pila, devolver el promedio de todos sus elementos }

{$INCLUDE /IntroProg/Estructu}

function promedio(dada: pila): integer;
var i, cantidad:  integer;
begin
    cantidad:= 0;
    i:= 0;
    
    while not pilaVacia(dada) do begin
        cantidad += tope(dada);
        desapilar(dada);
        i += 1;
    end;
    
    promedio:= cantidad div i;
end;

var dada: pila;
begin
    readPila(dada);
    
    writeln(promedio(dada));
end.