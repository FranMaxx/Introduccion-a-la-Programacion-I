program ejercicio12;

{ Realizar un procedimiento que invierta los elementos de un arreglo sobre si mismo }

const
    min = 1;
    max = 5;
    
type
    typeArr = array [min..max] of integer;

procedure cargarArreglo(var arr: typeArr);
var i, val: integer;
begin
    writeln('Ingrese números para cargar el arreglo...');
    
    for i:= min to max do begin
        write('[ ', i, ' ] - ');
        
        readln(val);
        arr[i]:= val;
    end;
end;

procedure invertir(var arr: typeArr);
var i, posFinal, aux: integer;
begin
    aux:= 0;
    i:= min;
    posFinal:= max;
    
    while i <= posFinal do begin
        aux:= arr[i];
        arr[i]:= arr[posFinal];
        arr[posFinal]:= aux;
    
        i+= 1;
        posFinal-= 1;
    end;
end;

procedure imprimirArreglo(arr: typeArr);
var i: integer;
begin
    writeln('Su arreglo invertido quedaria...');
    
    for i:= min to max do
        writeln('[', i, ']- ', arr[i]);
end;

// ------- PROGRAMA PRINCIPAL ------- //
var arr: typeArr;
begin
    cargarArreglo(arr);
    
    invertir(arr);
    imprimirArreglo(arr);
end.