// ------------------ INCOMPLETO FALTA TODOS LOS ELEMENTOS QUE POSICIONES INDICA -----------

program ejercicio8;

{ Utilizando el procedimento del ejercicio anterior resuelva: Dadas dos pilas (ORIGINAL y
POSICIONES), eliminar de ORIGINAL todos los elementos que POSICIONES indica, usando los
procedimientos anteriores. Note que al eliminar un elemento los restantes disminuyen en uno su
ubicación. Contemple este caso para que los corrimientos no afecten su algoritmo }

{$INCLUDE /IntroProg/Estructu}

procedure pasaPila(var origen, destino: pila);
begin
  while not pilaVacia(origen) do begin
    apilar(destino, desapilar(origen));
  end;
end;

procedure eliminar(var original: pila; posiciones: pila);
var aux, descarte: pila;
    i: integer;
begin
  inicPila(aux, '');
  inicPila(descarte, '');
  i:= 1;
  
  pasaPila(original, aux);
  
  while not pilaVacia(aux) do begin
    if i = tope(posiciones) then begin
      apilar(descarte, desapilar(aux));
    end else begin
      apilar(original, desapilar(aux));
    end;
    i:= i + 1;
  end;
end;

var original, posiciones: pila;
begin
  inicPila(original, '2 3 4 5 6');
  inicPila(posiciones, '3 4 5');
  
  eliminar(original, posiciones);
  
  writePila(original);
end.