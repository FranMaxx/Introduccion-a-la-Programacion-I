program ejercicio9;

{ En base a una fila NUMEROS (que contiene al menos un elemento), generar una pila
RESULTADO donde cada elemento será la suma de los valores de NUMEROS ubicados en una
posición menor o igual al mismo }

{$INCLUDE /IntroProg/Estructu}

procedure sumarElementos(var numeros: fila; var resultado: pila);
var aux: fila;
    amount: integer;
begin
    inicFila(aux, '');
    amount:= 0;
    
    while not filaVacia(numeros) do begin
        amount:= amount + primero(numeros);
        apilar(resultado, amount);
        agregar(aux, extraer(numeros));
    end;
end;

var numeros: fila;
    resultado: pila;
begin
    inicFila(numeros, '2 1 5 4 3');
    inicPila(resultado, '');
    
    sumarElementos(numeros, resultado);

    writePila(resultado);
end.