program ejercicio1;

{ Dado un número, calcular su factorial }

function factorial(n: integer): integer;
var i: integer;
begin
    i:= 1;
    factorial:= 1;
    
    while i <= n do begin
        factorial:= factorial * i;
        i+= 1;
    end;
end;

var n: integer;
begin
    n:= 5;
    writeln(factorial(n));
end.