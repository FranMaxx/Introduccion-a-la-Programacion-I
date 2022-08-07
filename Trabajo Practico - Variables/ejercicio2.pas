program ejercicio2;

{  Realice un procedimento para sumar los N primeros números naturales. (Ejemplo si N=5 se debe
responder con la suma de 1+2+3+4+5 }

procedure sumarN(input: integer; var output: integer);
var i: integer;
begin
  i:= 1;
  
  while (i <= input) do begin
    output:= output + i;
    i:= i + 1;    
  end;
end;

var n, resul: integer;
begin
  n:= 5;
  resul:= 0;
  
  sumarN(n, resul);
  
  writeln(resul);
end.