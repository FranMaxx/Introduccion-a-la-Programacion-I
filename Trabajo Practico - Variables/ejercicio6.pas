program ejercicio6;

{ Con las mismas variables del problema anterior, informar la cantidad de días entre dos fechas
(suponga que todos los meses tienen 30 días y los años 360 días). Además, definir al menos 3 casos
de testeo con valores para ambas fechas y el resultado que espera tener en cada caso. Realizar el
seguimiento del código con cada par de valores y verificar si se obtiene el resultado esperado } 

procedure diferencia(a1, m1, d1, a2, m2, d2: integer; var resul: integer);
begin
  if (a1 > a2) then
    resul:= resul + ((a1 - a2) * 360);
    
  if (m1 > m2) then
    resul:= resul + ((m1 - m2) * 30);
    
  if (d1 > d2) then
    resul:= resul + (d1 - d2);
  
  if (a1 < a2) then
    resul:= resul + ((a2 - a1) * 360);
    
  if (m1 < m2) then
    resul:= resul + ((((12 + m1) - m2) * 30) - 360);
    
  if (d1 < d2) then
    resul:= resul + (((30 + d1) - d2) - 30);
end;

var a1, m1, d1, a2, m2, d2, resul: integer;
begin
  a1:= 2024;
  m1:= 3;
  d1:= 2;
  
  a2:= 2022;
  m2:= 5;
  d2:= 5;
  
  resul:= 0;
  
  diferencia(a1, m1, d1, a2, m2, d2, resul);
  
  writeln(resul);
end.