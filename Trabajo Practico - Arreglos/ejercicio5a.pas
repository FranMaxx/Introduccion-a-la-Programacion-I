program ejercicio5a; 
{  Realizar un procedimiento o función(según sea lo más adecuado) que retorne el máximo
número de un arreglo de enteros desordenado }

const
    min = 1;
    max = 10;

type
    typeArr = array[min..max] of integer;

procedure cargarArreglo(var arr: typeArr);
var i: integer; 
    val: integer;
begin
    writeln('Ingrese numeros DESORDENADOS para el arreglo');
    
    for i:= min to max do begin
        write('[', i, '] - ');
        readln(val);
        
        arr[i]:= val;
    end;
end;
    
function maxNum(arr: typeArr): integer;
var j: integer;
    max: integer;
begin
    max:= arr[1];
    
    for j:= min + 1 to max do begin
        
        if arr[j] > max then
            max:= arr[j];
        
    end;
    
    maxNum:= max;
end;

var arr: typeArr;
begin
    cargarArreglo(arr);

    writeln('Maximo numero: ', maxNum(arr));
end.