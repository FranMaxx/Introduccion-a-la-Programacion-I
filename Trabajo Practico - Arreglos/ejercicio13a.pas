program ejercicio13a;

{ a) Implementar una función/procedimiento que: a) Verifique si un arreglo está ordenado
ascendentemente }

const
    min = 1;
    max = 5;

type
    typeArr = array [min..max] of integer;
    
procedure cargarArreglo(var arr: typeArr);
var i, val: integer;
begin
    writeln('Ingrese números para cargar su arreglo...');

    for i:= min to max do begin
        write('[', i, ']- ');
        
        readln(val);
        arr[i]:= val;
    end;
end;

function ordenado(arr: typeArr): boolean;
var i, next: integer;
begin
    i:= min;
    next:= i + 1;
    ordenado:= true;
    
    while (ordenado = true) and (i < max) do begin
    
        if arr[i] <= arr[next] then
            ordenado:= true
        else
            ordenado:= false;
        
        i += 1;
        next += 1;
    end;
end;

procedure imprimirArreglo(arr: typeArr);
var i: integer;
begin
    for i:= min to max do
        writeln('[', i, ']- ', arr[i]);
end;

var arr: typeArr;
begin
    cargarArreglo(arr);
    
    writeln('¿El arreglo esta ordenado ascendentemente? ', ordenado(arr));
end.