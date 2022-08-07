program ejercicio5;

{  Realizar un procedimento para resolver el siguiente problema: Dadas tres variables enteras A1,
M1, D1, que representan una fecha, y otras tres A2, M2 y D2, que representan otra. Colocar la
variable booleana Resultado en True o False si la primer fecha es menor que la segunda }

procedure fechaMenor(a1, m1, d1, a2, m2, d2: integer; var resultado: boolean);
begin
  if (a1 < a2) then
    resultado:= true;
    
  if (a1 = a2) and (m1 < m2) then
    resultado:= true;
    
  if (a1 = a2) and (m1 = m2) and (d1 < d2) then
    resultado:= true;
end;

var a1, m1, d1, a2, m2, d2: integer;
    resultado: boolean;
begin
  a1:= 2004;
  m1:= 3;
  d1:= 9;
  
  a2:= 2022;
  m2:= 5;
  d2:= 5;
  
  resultado:= false;
  
  fechaMenor(a1, m1, d1, a2, m2, d2, resultado);
  
  writeln(resultado);
end.