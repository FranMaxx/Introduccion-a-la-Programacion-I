program ejercicio2a;

{ Realizar una función que sume los elementos reales de un arreglo de dimensión 100. 
  a) El control de llenado se hace con un valor discernible }

const
    min = 1;
    max = 100;
    discernible = 0;
type
    typeArr = array[min..max] of real;
    
procedure cargarArreglo(var arr:typeArr);
var i: integer;
    valor: real;
    j: integer;
begin
    i:= min;
    j:= min;
    valor:= 1;
    
    writeln('Ingrese un num <> 0 para sumar. Si ingresa 0 terminara el programa');
    
    while (valor <> discernible) and (i <= max) do begin
        write('[', i, '] - ');
        readln(valor);
        
        arr[i]:= valor;
        i+= 1;
    end;
end;

function suma(arr:typeArr):real;
var i: integer; 
    total: real;
begin
    total:= 0;
    i:= 1;
    
    while arr[i] <> discernible do begin
        total+= arr[i];
        i+= 1;
    end;
    
    suma:= total; 
end;

var arr: typeArr; 
    j: integer;
begin
    j:= min;
    
     // Control de llenado por discernible
    for j:= min to max do begin
        arr[j]:= discernible;
    end;
    
    cargarArreglo(arr);
    writeln('Suma total: ', suma(arr):2:2);
end.