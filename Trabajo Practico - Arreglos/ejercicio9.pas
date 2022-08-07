program ejercicio9;

{ Dada una posición valida borre un caracter en un arreglo realizando el 
  corrimiento a izquierda y completando con blanco la última posición }

const
    min = 1;
    max = 5;
    blanco = ' ';
    
type
    typeArr = array [min..max] of char;
    
procedure cargarArreglo(var arr: typeArr);
var i: integer;
    val: char;
begin
    for i:= min to max do begin
        write('[ ', i, ' ] - ');
        
        readln(val);
        arr[i]:= val;
    end;
end;

procedure borrarCaracter(var arr: typeArr; pos: integer);
var i, minimo: integer;
begin
    i:= min;
    
    while (i < pos) and (i < max) do
        i+= 1;
    
    minimo:= i;
    while minimo < max do begin
        arr[minimo]:= arr[minimo + 1];
        minimo += 1;
    end;
    
    arr[max]:= blanco;
end;

procedure imprimirArreglo(arr: typeArr);
var i: integer;
begin
    for i:= min to max do
        writeln('[ ', i, ' ] - ', arr[i]);
end;

// ------- PROGRAMA PRINCIPAL ------- //
var arr: typeArr;
    pos: integer;
begin
    cargarArreglo(arr);
    
    writeln('¿Que posición deseas eliminar?');
    readln(pos);
    
    if (pos > 0) and (pos <= max) then begin
        borrarCaracter(arr, pos);
        imprimirArreglo(arr)
    end else
        writeln('Lo siento, debes ingresar una posición valida...');
end.