program ejercicio11;

{ Dada una Fila NUMEROS , generar otra Fila SONPARES con unos y ceros para indicar si el
elemento que se encuentra en la misma posición es par o impar }

{$INCLUDE /IntroProg/Estructu}

function parImpar(n: integer): boolean;
begin
    if n mod 2 = 0 then
        parImpar:= true
    else
        parImpar:= false
end;

procedure generarFila(var numeros, sonPares: fila);
begin
    while not filaVacia(numeros) do begin
        if parImpar(primero(numeros)) then
            agregar(sonPares, 1)
        else
            agregar(sonPares, 0);
        extraer(numeros);
    end;
end;

var numeros, sonPares: fila; 
begin
    inicFila(numeros, '1 2 3 4 5 6 7 8 9 10');
    inicFila(sonPares, '');
    
    generarFila(numeros, sonPares);
    
    writeFila(sonPares);
end.