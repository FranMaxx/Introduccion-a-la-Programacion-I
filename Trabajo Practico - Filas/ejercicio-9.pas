program ejercicio9;

{ Dada un fila ORIGEN que se lee por teclado y una fila MODELO inicializada con un sólo
elemento, modificar ORIGEN tal que si existe un elemento igual al de MODELO se lo ubique al
principio de la estructura, considerando que sólo cambia la primer ocurrencia de ese elemento.
Imprima ORIGEN }

{$INCLUDE /IntroProg/Estructu}

var 
  origen, modelo: fila;
  aux, aux2: fila;

begin
  inicFila(origen, '1 2 3 4 5 6');
  inicFila(modelo, '5');
  inicFila(aux, '');
  inicFila(aux2, '');
  
  while not filaVacia(origen) and not filaVacia(modelo) do begin
    if primero(origen) = primero(modelo) then begin
        agregar(aux2, primero(modelo));
        agregar(aux, extraer(origen));
    end else begin
        agregar(aux, extraer(origen));
    end;
  end;
  
  if not filaVacia(aux2) then begin
    agregar(origen, extraer(aux2));
    
    while not filaVacia(aux) do begin
        agregar(origen, extraer(aux));
    end;
  end else begin
    while not filaVacia(aux) do begin
        agregar(origen, extraer(aux));
    end;
  end;
  
  writeFila(origen);
end.