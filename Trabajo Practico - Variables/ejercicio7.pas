program ejercicio7;

{  Realice un procedimiento para: dada la variable entera Posición, eliminar de la pila Secuencia el
elemento que se encuentre en dicha posición(si la posición es inválida no hace nada }

{$INCLUDE /IntroProg/Estructu}

procedure pasaPila(var origen, destino: pila);
begin
  while not pilaVacia(origen) do begin
    apilar(destino, desapilar(origen));
  end;
end;

procedure eliminar(var secuencia: pila; posicion: integer);
var aux, descarte: pila;
    i: integer;
begin
  inicPila(aux, '');
  inicPila(descarte, '');
  i:= 1;
  
  pasaPila(secuencia, aux);
  
  while not pilaVacia(aux) do begin
    if i = posicion then begin
      apilar(descarte, desapilar(aux));
    end else begin
      apilar(secuencia, desapilar(aux));
    end;
    i:= i + 1;
  end;
end;

var secuencia: pila;
    posicion: integer;
begin
  inicPila(secuencia, '2 3 4 5 6');
  posicion:= 3;
  
  eliminar(secuencia, posicion);
  
  writePila(secuencia);
end.