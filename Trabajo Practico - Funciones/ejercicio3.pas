program ejercicio3;

{ Dada una pila, devolver el valor que resulte de calcular la suma de todos sus elementos }

{$INCLUDE /IntroProg/Estructu}

function sumaElementos(dada: pila): integer;
begin
    sumaElementos:= 0;
    
    while not pilaVacia(dada) do begin
        sumaElementos += tope(dada);
        desapilar(dada);
    end;
end;

var dada: pila;
begin
    readPila(dada);
    
    writeln(sumaElementos(dada));
end.