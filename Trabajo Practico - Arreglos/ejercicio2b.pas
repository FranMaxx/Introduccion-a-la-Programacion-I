program ejercicio2b; 

{ Realizar una función que  sume los arr reales de un typeArreglo de dimensión 100.
  b) El control de llenado se hace con una frontera. }

const
    min = 1;
    max = 100;
type
    typeArr = array[min..max] of real;

// Control de llenado por frontera
procedure cargarArreglo(var arr: typeArr; var frontera:integer);
var i: integer; 
    valor: real;
begin
    i:= 1;
    valor:= 1;
    
   writeln('Ingrese un num <> 0 para sumar. Si ingresa 0 terminara el programa');
    
    while (valor <> 0) and (i <= max) do begin
        write('[', i, '] - ');
        readln(valor);
        
        frontera+= 1;
        arr[i]:= valor;
        i+= 1;
    end;
end;

function suma(arr:typeArr; frontera:integer):real;
var i:integer;
    total: real;
begin
    total:= 0;
    
    for i:= min to frontera do
        total+= arr[i];
        
    suma:= total;
end;

var arr: typeArr;
    frontera: integer;
begin
    frontera:= 0;
    
    cargarArreglo(arr, frontera);
    
    writeln('La suma final es ', suma(arr, frontera):2:2);
end.