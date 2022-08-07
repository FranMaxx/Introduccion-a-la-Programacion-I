program ejercicio9;

{ Analizar que dos Filas sean iguales (misma cantidad y orden de elementos) }

{$INCLUDE /IntroProg/Estructu}

function sonIguales(fila1, fila2: fila): boolean;
begin
    while not filaVacia(fila1) and not filaVacia(fila2) and (primero(fila1) = primero(fila2)) do begin
        extraer(fila1);
        extraer(fila2);
    end;
    
    if filaVacia(fila1) and filaVacia(fila2) then
        sonIguales:= true
    else
        sonIguales:= false;
end;

var fila1, fila2: fila;
begin
    inicFila(fila1, '1 2 3 4 5');
    inicFila(fila2, '1 2 3 4 5');
    
    writeln(sonIguales(fila1, fila2));
end.