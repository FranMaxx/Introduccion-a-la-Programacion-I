// ----------------------------- INCOMPLETO --------------------------------------
program ejercicio11;

{ Concatenar dos pilas de modo que la que posee menos elementos quede abajo; si ambas tienen
la misma cantidad de elementos, cualquiera puede quedar abajo }

{$INCLUDE /IntroProg/Estructu}
// ----------------------------- INCOMPLETO --------------------------------------
var 
  pila1, pila2, resultado, descarte1, descarte2: pila;

begin
  inicPila(pila1, '1 2 3 4 5 6');
  inicPila(pila2, '1 2 3 4 5');
  inicPila(resultado, '');
  inicPila(descarte1, '');
  inicPila(descarte2, '');
  
  while not (pilaVacia(pila1)) and not (pilaVacia(pila2)) do begin
    apilar(descarte1, desapilar(pila1));
    apilar(descarte2, desapilar(pila2));
  end;
  
  
  
  writePila(pila1);
  writePila(pila2);
  writePila(resultado);
  writePila(descarte1);
  writePila(descarte2);
end.