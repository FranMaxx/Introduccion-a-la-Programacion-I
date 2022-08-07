program ejercicio8;

{ Cargar dese el teclado la pila ORIGEN y que la invierta, es decir, que quede
  ORIGEN con los mismo elementos pero invertidos }

{$INCLUDE /IntroProg/Estructu}

var origen, destino, aux: pila;

begin

 readPila(origen);
 inicPila(destino, '');
 inicPila(aux, '');
 
 while not pilaVacia(origen) do begin
    apilar(destino, desapilar(origen));
 end;
 
 while not pilaVacia(destino) do begin
    apilar(aux, desapilar(destino));
 end;
 
 while not pilaVacia(aux) do begin
    apilar(origen, desapilar(aux));
 end;
 
 writePila(origen);
 
end.