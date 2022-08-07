program ejercicio3;

{ Realice un procedimento para colocar en una variable la posición que tiene un elemento dado en
la fila ORIGINAL. Si el elemento no está en la fila la posición sera -1 }

{$INCLUDE /IntroProg/Estructu}

procedure colocarPosicion(input: fila; num: integer; var output: integer);
var aux: fila;
    i: integer;
begin
  inicFila(aux, '');
  i:= 1;
  
  while not filaVacia(input) do begin
    if primero(input) = num then begin
      output:= i;
    end;
     
    agregar(aux, extraer(input));
    i:= i + 1;
  end;
end;

var original: fila;
    num: integer;
    resul: integer;
begin
  inicFila(original, '7 9 4 3 5');
  num:= 3;
  resul:= -1;
  
  colocarPosicion(original, num, resul);
  
  writeln(resul);
end.