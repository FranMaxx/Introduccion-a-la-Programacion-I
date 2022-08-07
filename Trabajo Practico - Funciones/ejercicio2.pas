program ejercicio2;

{ Verificar si un número es par o impar, devolviendo true o false, respectivamente }

function parImpar(n: integer): boolean;
begin
    if n mod 2 = 0 then
        parImpar:= true
    else
        parImpar:= false
end;

var n: integer;
begin
    n:= 57;
    writeln(parImpar(n));
end.