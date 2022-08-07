program ejercicio10;

{ Ubicar el primer elemento de la fila DADA detrás del primer elemento de valor 12, dejando
los demás elementos en el mismo orden. Si el elemento de valor 12 es el primero, dejarlo como
estaba. Se supone que al menos hay un elemento de valor de 12 }

{$INCLUDE /IntroProg/Estructu}

var 
  dada, auxTope: fila;
  aux, aux2: pila;

begin
  inicFila(dada, '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15');
  inicFila(auxTope, '');
  inicPila(aux, '');
  inicPila(aux2, '');
  
  if not (filaVacia(dada)) and (primero(dada) <> 12) then begin
    agregar(auxTope, extraer(dada));
  end;

  while not filaVacia(dada) do begin
    apilar(aux, extraer(dada));
  end;
  
  while not pilaVacia(aux) do begin
    apilar(aux2, desapilar(aux));
    
    if not (pilaVacia(aux)) and not (filaVacia(auxTope)) then begin
        if tope(aux) = 12 then begin
            apilar(aux2, extraer(auxTope))
        end;
    end;
  end;
  
  while not pilaVacia(aux2) do begin
    agregar(dada, desapilar(aux2));
  end;
  
  writeFila(dada);
end.