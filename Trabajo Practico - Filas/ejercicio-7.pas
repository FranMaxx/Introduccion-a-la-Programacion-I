program ejercicio7;

{ Comparar las filas A y B para determinar si son iguales, es decir que tienen la misma cantidad
de elementos y en el mismo orden. Si son iguales, dejar el tope de la pila RESULTADO en la pila
IGUALES y si son distintas en DISTINTAS }

{$INCLUDE /IntroProg/Estructu}

var 
  a, b, aux: fila;
  resultado, iguales, distintas: pila;

begin
  inicFila(a, '1 2 3 4 5');
  inicFila(b, '1 2 3 4 5');
  inicFila(aux, '');
  inicPila(resultado, '10');
  inicPila(iguales, '');
  inicPila(distintas, '');
  
  if not pilaVacia(resultado) then begin
    while (not filaVacia(a)) and (not filaVacia(b)) and (primero(a) = primero(b)) do begin
      agregar(aux, extraer(a));
      agregar(aux, extraer(b));
    end;
    
    if (filaVacia(a) and filaVacia(b)) then begin
      apilar(iguales, desapilar(resultado));
    end else begin
      apilar(distintas, desapilar(resultado));
    end;
  end;
  
  writePila(iguales);
  writePila(distintas);
end.