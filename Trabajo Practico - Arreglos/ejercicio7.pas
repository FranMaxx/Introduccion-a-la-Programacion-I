program ejercicio7;

{ Dada una posición valida, insertar un caracter dado en un arreglo haciendo un
  corrimiento a la derecha }
  
const
    min = 1;
    max = 5;
    caracter = '*';
    
type
    arrType = array [min..max] of char;

procedure cargarArreglo(var arr: arrType);
var i: integer;
    val: char;
begin
    for i:= min to max do begin
        write('[ ', i, ' ] - ');
        
        readln(val);
        arr[i]:= val;
    end;
end;

procedure insertarCaracter(var arr: arrType; pos: integer);
var i: integer;
    maximo: integer;
begin
    i:= min;
    
    while i < pos do
        i+= 1;
        
    maximo:= max;
    
    while maximo <> i do begin
        arr[maximo]:= arr[maximo - 1];
        maximo-= 1;
    end;
    
    arr[i]:= caracter;
end;

procedure imprimirArreglo(arr: arrType);
var i: integer;
begin
    writeln('Su arreglo quedaria...');
    
    for i:= min to max do
        write('| ', arr[i], ' | ')
end;

// ------- PROGRAMA PRINCIPAL ------- //
var arr: arrType;
    pos: integer;
begin
    cargarArreglo(arr);
    
    writeln('¿En que posición deseas insertar el caracter "', caracter, '" ?');
    readln(pos);
    
    insertarCaracter(arr, pos);
    imprimirArreglo(arr);
end.