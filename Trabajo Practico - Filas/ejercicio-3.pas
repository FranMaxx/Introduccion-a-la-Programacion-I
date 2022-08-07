program ejercicio3;

{ Pasar el primer elemento de la DATOS a su última
posición, dejando los restantes elementos en el mismo orden }

{$INCLUDE /IntroProg/Estructu}

var 
  DATOS: fila;

begin
  readFila(DATOS);
  
  if (not filaVacia(DATOS)) then begin
    agregar(DATOS, extraer(DATOS));
  end;
  
  writeFila(DATOS);
end.