// ----------- HECHO A MEDIAS ---------

program ejercicio10;

{ Codificar el procedimiento ExtraerSecuencia que recibe en el
parámetro DADA la pila de la que extrae, y retorna en la pila NUEVA la primer secuencia de
elementos no nulos de DADA. Usando el procedimiento ExtraerSecuencia, codificar el
procedimiento CantidadSecuencias que recibe como parámetro la pila DADA, y que devuelve en el
parámetro entero Cantidad el número de secuencias de la pila DADA }

{$INCLUDE /IntroProg/Estructu}

procedure pasaPila(var origen, destino: pila);
begin
    while not pilaVacia(origen) do begin
        apilar(destino, desapilar(origen));
    end;
end;

procedure extraerSecuencia(var dada, nueva: pila);
var aux: pila;
begin
    inicPila(aux, '');
    
    while not (pilaVacia(dada)) do begin
        apilar(aux, desapilar(dada));
    end;
    
    while not (pilaVacia(aux)) and (tope(aux) <> 0) do begin
        apilar(nueva, desapilar(aux));
    end;
end;

procedure cantidadSecuencias(var dada: pila; var cantidad: integer);
var aux: pila;
begin
    inicPila(aux, '');
    
    while not (pilaVacia(dada)) do begin
        if tope(dada) = 0 then begin
            cantidad:= cantidad + 1;    
        end;
        apilar(aux, desapilar(dada));
    end;

    pasaPila(aux, dada);
end;

var dada, nueva: pila;
    cantidad: integer;
begin
    inicPila(dada, '1 2 3 4 5');
    inicPila(nueva, '');
    cantidad:= 1;
    
    cantidadSecuencias(dada, cantidad);
    extraerSecuencia(dada, nueva);
    
    writeln('Cantidad de secuencias: ', cantidad);
    writePila(nueva);
end.