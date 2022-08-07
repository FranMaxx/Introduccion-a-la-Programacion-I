program ejercicio13c;

{ c) Modificar el módulo para que verifique si una un arreglo está ordenado 
  ascendentemente entre una posición inicial y posición final }

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

function ordenado(arr: typeArr; posInicial, posFinal: integer): boolean;
var i, next: integer;
begin
    i:= posInicial;
    next:= i + 1;
    ordenado:= true;
    
    while (ordenado = true) and (i < posFinal) do begin
    
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
    posInicial, posFinal: integer; 
begin
    cargarArreglo(arr);
    
    writeln('Ingrese la posición inicial');
    readln(posInicial);
    
    writeln('Ingrese la posición final');
    readln(posInicial);
    
    writeln('¿El arreglo esta ordenado ascendentemente? ', ordenado(arr, posInicial, posFinal));
end.