// ----------------------------- INCOMPLETO --------------------------------------
program ejercicio8;

{ La fila DADA se encuentra ordenada de menor a mayor. Insertar el tope de la pila ELEMENTO
en DADA de tal forma que continúe ordenada }

{$INCLUDE /IntroProg/Estructu}
// ----------------------------- INCOMPLETO --------------------------------------

var 
  dada: fila;
  elemento, aux: pila;

begin
  inicFila(dada, '1 2 3 4 5 6 7 8 9 10');
  inicPila(elemento, '8');
  inicPila(aux, '');
  
  while not filaVacia(dada) do begin
    apilar(aux, extraer(dada))
  end;
  
  while not pilaVacia(aux) do begin
    agregar(dada, desapilar(aux))
  end;
  
  writeFila(dada);
  writePila(elemento);
  writePila(aux);
end.