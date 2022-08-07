program ejercicio4; 
{ Realice un procedimiento o función(según sea lo más adecuado) de búsqueda binaria que
devuelva la posición de un elemento en un arreglo ordenado. Si no está el elemento
devuelve -1 }

const
    min = 1;
    max = 10;

type
    typeArr = array[min..max] of integer;

procedure cargarArreglo(var arr: typeArr);
var i: integer; 
    val: integer;
begin
    writeln('Ingrese numeros ORDENADOS para el arreglo');
    
    for i:= min to max do begin
        write('[', i, '] - ');
        readln(val);
        
        arr[i]:= val;
    end;
end;
    
function busquedaBinaria(arr: typeArr; element: integer): integer;
var j: integer;
    mitad: integer;
begin
    j:= 1;
    mitad:= max div 2;
    
    if element < arr[mitad] then begin
        writeln('La busqueda se ha situado en MENOS de la mitad');
        
        while (arr[j] <> element) and (j <= max) do
            j+= 1;
    end else begin
        writeln('La busqueda se ha situado en la MITAD o MAS');
        j:= mitad;
        
        while (arr[j] <> element) and (j <= max) do
            j+= 1;
    end;
    
    if arr[j] <> element then
        busquedaBinaria:= -1
    else
        busquedaBinaria:= j;
end;

var arr: typeArr;
    element, idx: integer;
begin
    idx:= 0;
    
    cargarArreglo(arr);
    
    writeln('Ingrese el elemento que desea buscar');
    readln(element);
    
    idx:= busquedaBinaria(arr, element);
    writeln('Posición: ', idx);
end.