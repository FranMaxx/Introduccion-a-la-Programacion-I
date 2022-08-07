program ejercicio1Burbujeo;

{  Ordenar un arreglo de caracteres mediante: BURBUJEO }

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


procedure intercambiar(var arr: typeArr; pos: integer);
var aux: char;
begin
    aux:= arr[pos + 1];
    arr[pos + 1]:= arr[pos];
    arr[pos]:= aux;
end;

procedure ordenarPorBurbujeo(var arr: typeArr);
var i, pos: integer;
begin
    for i:= min to max - 1 do begin
        
        for pos:= min to max - i do begin
            
            if (arr[pos] > arr[pos + 1]) then
                intercambiar(arr, pos);
        
        end;
    
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
    ordenarPorBurbujeo(arr);
    imprimirArreglo(arr);
end.