program ejercicio5;

{ Pasar todos los elementos DESTINO hasta que aparezca un
cero u ORIGEN quede sin elementos }

{$INCLUDE /IntroProg/Estructu}

var 
  ORIGEN, DESTINO: fila;

begin
  inicFila(ORIGEN, '1 2 3 0 4');
  inicFila(DESTINO, '');
  
  while (not filaVacia(ORIGEN)) and (primero(ORIGEN) <> 0) do begin
    agregar(DESTINO, extraer(ORIGEN));
  end;
  
  writeFila(ORIGEN);
  writeFila(DESTINO);
end.