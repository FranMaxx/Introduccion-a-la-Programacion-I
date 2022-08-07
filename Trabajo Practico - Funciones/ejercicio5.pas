program ejercicio5;

{ Dada una pila, devolver true o false si un número NUM está al menos una vez en la pila }

{$INCLUDE /IntroProg/Estructu}

function numEsta(dada: pila; n: integer): boolean;
begin
    numEsta:= false;
    
    while not pilaVacia(dada) do begin
        if tope(dada) = n then
            numEsta:= true;
            
        desapilar(dada);
    end;
end;

var dada: pila;
    n: integer;
begin
    inicPila(dada, '1 2 3 4 5');
    n:= 3;
    
    writeln(numEsta(dada, n));
end.