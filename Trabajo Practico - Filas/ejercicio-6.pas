program ejercicio6;

{ Comparar la cantidad de elementos de las filas A y B. Si son iguales
dejar el tope de la pila Resultado en la pila VERDADERO y son distintas en la pila FALSO }

{$INCLUDE /IntroProg/Estructu}

var 
  A, B, AUX: fila;
  Resultado, VERDADERO, FALSO: pila;

begin
  inicFila(A, '1 2 3 4 5');
  inicFila(B, '1 2 3 4');
  inicFila(AUX, '');
  inicPila(Resultado, '10');
  inicPila(VERDADERO, '');
  inicPila(FALSO, '');
  
  while (not filaVacia(A)) and (not filaVacia(B)) do begin
    agregar(AUX, extraer(A));
    agregar(AUX, extraer(B));
  end;
  
  if (filaVacia(A) and filaVacia(B)) then begin
    apilar(VERDADERO, desapilar(Resultado));
  end else begin
    apilar(FALSO, desapilar(Resultado));
  end;
  
  writePila(VERDADERO);
  writePila(FALSO);
end.