program ejercicio1;

{ Pasar los elementos de la fila ORIGEN leída por teclado a la pila DESTINO inicialmente vacía }

{$INCLUDE /IntroProg/Estructu}

var 
  ORIGEN: fila;
  DESTINO: pila;

begin
  readFila(ORIGEN);
  inicPila(DESTINO, '');
  
  while (not filaVacia(ORIGEN)) do begin
    apilar(DESTINO, extraer(ORIGEN));
  end;
  
  writePila(DESTINO);
end.