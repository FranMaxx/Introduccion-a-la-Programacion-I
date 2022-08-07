program ejercicio11;

{ Realizar una función que determine si un arreglo eso capicúa }

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

function capicua(arr: typeArr): boolean;
var i, posFinal: integer;
begin
    i:= min;
    posFinal:= max;
    
    while (i <> posFinal) and (arr[i] = arr[posFinal]) do begin
        i+= 1;
        posFinal-= 1;
    end;
    
    if i = posFinal then
        capicua:= true
    else
        capicua:= false;
end;


// ------- PROGRAMA PRINCIPAL ------- //
var arr: typeArr;
begin
    cargarArreglo(arr);
    
    writeln('¿Es capicua el arreglo?: ', capicua(arr));
end.