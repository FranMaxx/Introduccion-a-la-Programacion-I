program ejercicio1Seleccion;

{  Ordenar un arreglo de caracteres mediante: SELECCIÓN }

const 
    min = 1;
    max = 5;

type
    typeArr = array [min..max] of char;
    
procedure cargarArreglo(var arr: typeArr);
var i: integer;
begin
    writeln('Ingrese carácteres para cargar el arreglo...');
    
    for i:= min to max do begin
        write('[', i, ']- ');
        readln(arr[i]);
    end;
end;

// Devuelve la posición del minimo entre arr[pos]..arr[max]
function posicionMenor(arr: typeArr; pos: integer): integer;
var j, p: integer;
begin
    p:= pos;
    
    for j:= pos + 1 to max do
        if arr[j] < arr[p] then
            p:= j;
            
    posicionMenor:= p;
end;

// Intercambia dos elementos
procedure intercambiar(var arr: typeArr; pos, posMenor: integer);
var dato: char;
begin
    dato:= arr[pos];
    arr[pos]:= arr[posMenor];
    arr[posMenor]:= dato;
end;

// Va seleccionando en cada pasada el menor y lo lleva adelante
procedure ordenarPorSeleccion(var arr: typeArr);
var pos: integer;
begin
    for pos:= min to max - 1 do
        intercambiar(arr, pos, posicionMenor(arr, pos));
end;

procedure imprimirArreglo(arr: typeArr);
var i: integer;
begin
    writeln('Su arreglo quedaria...');
    
    for i:= min to max do
        writeln('[', i, ']- ', arr[i]);
end;

// ---- PROGRAMA PRINCIPAL ----
var arr: typeArr;
begin
    
    cargarArreglo(arr);
    
    ordenarPorSeleccion(arr);
    imprimirArreglo(arr);
end.