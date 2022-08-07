program ejercicio6;

{ Dada una pila pasar el TOPE a su ultima posición, el resto queda igual }

{$INCLUDE /IntroProg/Estructu}

var origen, auxTope, auxiliar: pila;

begin

 inicPila(origen, '5 6 7 8 9 10');
 inicPila(auxTope, '');
 inicPila(auxiliar, '');
 
 apilar(auxtope, desapilar(origen));
 
 while not pilaVacia(origen) do begin
    apilar(auxiliar, desapilar(origen));
 end;
 
 while not pilaVacia(auxiliar) do begin
    apilar(auxtope, desapilar(auxiliar));
 end;
 
 writePila(origen);
 writePila(auxtope);
 
end.