program ejercicio1Insercion;

{  Ordenar un arreglo de caracteres mediante: INSERCIÓN }

const 
    min = 1;
    max = 5;

type
    typeArr = array [min..max] of char;
    
procedure cargarArreglo(var arr: typeArr);
var i: integer;
begin
    writeln('Ingrese carácteres para cargar el arreglo...');
    
    for i:= min to max do begin
        write('[', i, ']- ');
        readln(arr[i]);
    end;
end;

procedure imprimirArreglo(arr: typeArr);
var i: integer;
begin
    writeln('Su arreglo quedaria...');
    
    for i:= min to max do
        writeln('[', i, ']- ', arr[i]);
end;

// ---- PROGRAMA PRINCIPAL ----
var arr: typeArr;
begin
    
    cargarArreglo(arr);
    
    imprimirArreglo(arr);
end.