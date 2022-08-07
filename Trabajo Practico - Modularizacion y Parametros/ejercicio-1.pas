program ejercicio1;

{ Codificar un procedimiento para resolver el ejercicio 10 del Práctico 1 eliminar según tope de
modelo }

{$INCLUDE /IntroProg/Estructu}

procedure pasaPila(var destino, origen: pila);
begin
    while not pilaVacia(origen) do begin
        apilar(destino, desapilar(origen));
    end;
end;

procedure eliminarTope(var dada: pila; modelo: pila);
var descarte, aux: pila;
begin
    inicPila(descarte, '');
    inicPila(aux, '');
    
    while not pilaVacia(dada) do begin 
        if tope(dada) = tope(modelo) then begin
            desapilar(dada);
        end else begin
            apilar(aux, desapilar(dada));
        end;
    end;
    
    pasaPila(dada, aux);
end;

var dada, modelo: pila;
begin
    inicPila(modelo, '6');
    inicPila(dada, '1 2 3 4 5 6 7');
    
    eliminarTope(dada, modelo);

    writePila(dada);
end.