program ejercicio8;

{ Dividir la pila DADA a la mitad dejando el resultado en MITAD1 y MITAD2, respetando el
orden en ambas partes }

{$INCLUDE /IntroProg/Estructu}

procedure dividir(var dada, mitad1, mitad2: pila);
var aux: pila;
    length, i: integer;
begin
    length:= 0;
    i:= 0;
    
    while not pilaVacia(dada) do begin
        apilar(aux, desapilar(dada));
        length += 1;
    end;
    
    while not pilaVacia(aux) do begin
        if i < (length div 2) then
            apilar(mitad1, desapilar(aux))
        else
            apilar(mitad2, desapilar(aux));
        
        i += 1;
    end;
end;

var dada, mitad1, mitad2: pila;
begin
    inicPila(dada, '1 2 3 4 5 6');
    inicPila(mitad1, '');
    inicPila(mitad2, '');
    
    dividir(dada, mitad1, mitad2);
    
    writePila(mitad1);
    writePila(mitad2);
end.