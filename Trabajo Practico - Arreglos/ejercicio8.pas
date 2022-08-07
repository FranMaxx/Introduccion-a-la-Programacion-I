program ejercicio8;

{ Borrar un caracter dado en un arreglo ordenado alfabéticamente, conservando 
  el orden y haciendo un corrimiento a la izquierda y completando con blanco la 
  última posición. }
  
const
    min = 1;
    max = 5;
    blanco = ' ';
    
type
    arrType = array [min..max] of char;

procedure cargarArreglo(var arr: arrType);
var i: integer;
    val: char;
begin
    writeln('Ingresa caracteres para llenar el arreglo');
    
    for i:= min to max do begin
        write('[ ', i, ' ] - ');
        readln(val);
        arr[i]:= val;
    end;
end;

procedure borrarCaracterYCompletar(var arr: arrType; caracter: char);
var i, pos: integer;
begin
    i:= min;
    
    while (arr[i] <> caracter) and (i < max) do
        i+= 1;
    
    pos:= i;
    
    while pos < max do begin
        arr[pos]:= arr[pos + 1];
        
        pos+= 1;
    end;
    
    if i <> max then
        arr[max]:= blanco;
end;

procedure imprimirArreglo(arr: arrType);
var i: integer;
begin
    for i:= min to max do
        writeln('| ', arr[i], ' | ');
end;

// ------- PROGRAMA PRINCIPAL ------- //
var arr: arrType;
    caracter: char;
begin
    cargarArreglo(arr);
    
    writeln('¿Que caracter deseas borrar?');
    readln(caracter);
    
    borrarCaracterYCompletar(arr, caracter);
    imprimirArreglo(arr);
end.