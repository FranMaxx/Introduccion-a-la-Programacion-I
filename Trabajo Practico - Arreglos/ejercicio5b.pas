program ejercicio5b; 
{  Realizar un procedimiento o función(según sea lo más adecuado) que retorne el máximo
   número de un arreglo de enteros desordenado 
   
   b) ¿Cómo cambiaría la solución si el arreglo estuviera ordenado? }

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
    
function maxNum(arr: typeArr): integer;
begin
    maxNum:= arr[max];
end;

var arr: typeArr;
begin
    cargarArreglo(arr);

    writeln('Maximo numero: ', maxNum(arr));
end.