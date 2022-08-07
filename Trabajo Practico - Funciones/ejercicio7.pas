program ejercicio7;

{ Dada una pila NUMEROS indicar si es capicúa }

{$INCLUDE /IntroProg/Estructu}

function capicua(numeros: pila): boolean;
var comparar, aux: pila;
begin
    inicPila(comparar, '');
    inicPila(aux, '');
    
    while not pilaVacia(numeros) do begin
        apilar(aux, tope(numeros));
        apilar(comparar, desapilar(numeros));
    end;
    
    while not pilaVacia(aux) do begin
        apilar(numeros, desapilar(aux));
    end;
    
    while not pilaVacia(numeros) and not pilaVacia(comparar) and (tope(numeros) = tope(comparar)) do begin
        desapilar(numeros);
        desapilar(comparar);
    end;
    
    if pilaVacia(numeros) or pilaVacia(comparar) then
        capicua:= true
    else
        capicua:= false;
end;

var numeros: pila;
begin
    inicPila(numeros, '1 2 4 5 4 2 1');
    
    writeln(capicua(numeros));
end.