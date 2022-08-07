program ejercicio3; 
{ Realice un procedimiento o función(según sea lo más adecuado) de búsqueda lineal que
devuelva la posición de un elemento en un arreglo desordenado. Si no está el elemento
devuelve -1 }

const
    min = 1;
    max = 5;

type
    typeArr = array[min..max] of integer;

procedure cargarArreglo(var arr: typeArr);
var i: integer; 
    val: integer;
begin
    writeln('Ingrese numeros para el arreglo');
    
    for i:= min to max do begin
        write('[', i, '] - ');
        readln(val);
        
        arr[i]:= val;
    end;
end;
    
function busquedaLineal(arr: typeArr; element: integer): integer;
var j: integer;
begin
    j:= 1;
    
    while (arr[j] <> element) and (j <= max) do
        j+= 1;
    
    if arr[j] <> element then
        busquedaLineal:= -1
    else
        busquedaLineal:= j;
end;

var arr: typeArr;
    element, idx: integer;
begin
    idx:= 0;
    
    cargarArreglo(arr);
    
    writeln('Ingrese el elemento que desea buscar');
    readln(element);
    
    idx:= busquedaLineal(arr, element);
    writeln('Posición: ', idx);
end.