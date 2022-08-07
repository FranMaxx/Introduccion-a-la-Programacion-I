program ejercicio1;

{ Realizar un procedimiento que cargue caracteres (no más de 50) desde el teclado en un
arreglo. El fin de la carga se detecta por el ingreso de un carácter “*” }

const min = 1;
      max = 50;

type typeArr = array [min..max] of char;

procedure cargar(var arr: typeArr; var frontera: integer);
var i: integer;
    val: char;
begin
  i:= 1;
  
  writeln('Ingrese datos para llenar el arreglo');
  writeln('Ingrese "*" para cancelar...');
  
  while (val <> '*') and (i <= max) do begin
    readln(val);
        
    arr[i]:= val;
    i += 1;
    frontera += 1;
  end;
end;


var arr: typeArr;
    idx, frontera: integer;
begin
    frontera:= 0;
    cargar(arr, frontera);
    
    writeln('Los valores ingresados son...');
    
    for idx:= min to frontera - 1 do
        writeln('[', idx, '] - ', arr[idx]);
end.