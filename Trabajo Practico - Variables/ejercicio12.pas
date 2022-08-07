program ejercicio12;

{ Crea un programa que mediante el procedimiento "actualizarFilaDatos", incrementa
en "datos" todos los numeros existentes en "posiciones" y "valores" respectivos. }

{$INCLUDE/IntroProg/Estructu}

procedure actualizarFilaDatos(var datos: fila; var posiciones, valores: pila);
var aux: fila;
    i, num, longitud: integer;
begin
    inicFila(aux, '');
    i:= 1;
    num:= 0;
    longitud:= 0;
    
    while not filaVacia(datos) do begin
        agregar(aux, extraer(datos));
        longitud:= longitud + 1;
    end;
    
    while not filaVacia(aux) do begin
        agregar(datos, extraer(aux));
    end;
    
    while not pilaVacia(posiciones) and not pilaVacia(valores) do begin
    
        if (tope(posiciones) > 0) and (tope(posiciones) <= longitud) then begin
        
            while i < tope(posiciones) do begin
            
                if not filaVacia(datos) then begin
                    agregar(aux, extraer(datos));
                    i:= i + 1;
                end;
                
            end;
        
            if i = tope(posiciones) then begin
                num:= primero(datos) + tope(valores);
                
                agregar(aux, num);
                extraer(datos);
                desapilar(posiciones);
                desapilar(valores);
                
                i:= i + 1;
            end;
            
            while not filaVacia(datos) do begin
                agregar(aux, extraer(datos));
            end;
            
            while not filaVacia(aux) do begin
                agregar(datos, extraer(aux));
            end;
            
            i:= 1;
            
        end else begin
            desapilar(posiciones);
            desapilar(valores);
        end;
    
    end;

end;

var datos: fila;
    posiciones, valores: pila;
begin
    readFila(datos);
    readPila(posiciones);
    readPila(valores);
    
    actualizarFilaDatos(datos, posiciones, valores);
    writeFila(datos);
end.