program ejercicio1;

{ Realice un procedimento para Intercambiar los valores de dos variables enteras 

1.1) ¿Cuáles serían las diferencias si las variables fueran de tipo caracter? 
    Habria que declarar las variables como "string" y no como "char", de lo contrario
    nos tirara error ya que '5' no es un char (character); 
}

procedure intercambiarValores(var a, b: integer);
var aux, aux2: integer;
begin
  aux:= a;
  aux2:= b;
  
  a:= aux2;
  b:= aux;
end;

var num1, num2: integer;
begin
  num1:= 5;
  num2:= 10;
  
  intercambiarValores(num1, num2);
  
  writeln(num1);
  writeln(num2);
end.