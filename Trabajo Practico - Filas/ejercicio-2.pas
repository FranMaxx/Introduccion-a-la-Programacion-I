program ejercicio2;

{ Invertir el orden de la fila DADA leida por teclado }

{$INCLUDE /IntroProg/Estructu}

var 
  DADA: fila;
  AUX: pila;

begin
  readFila(DADA);
  inicPila(AUX, '');
  
  while(not filaVacia(DADA)) do begin
    apilar(AUX, extraer(DADA));
  end;
  
  while(not pilaVacia(AUX)) do begin
    agregar(DADA, desapilar(AUX));
  end;
  
  writeFila(DADA);
end.