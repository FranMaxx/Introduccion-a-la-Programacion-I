program ejercicio4;

{ Pasar el último elemento de DATOS a su primera posición
dejando los restantes elementos en el mismo orden }

{$INCLUDE /IntroProg/Estructu}

var 
  DATOS: fila;
  AUX, AUX2: pila;

begin
  readFila(DATOS);
  inicPila(AUX, '');
  inicPila(AUX2, '');
  
  while (not filaVacia(DATOS)) do begin
    apilar(AUX, extraer(DATOS));
  end;
  
  if (not pilaVacia(AUX)) then begin
    agregar(DATOS, desapilar(AUX));
  end;
  
  while (not pilaVacia(AUX)) do begin
    apilar(AUX2, desapilar(AUX));
  end;
  
  while (not pilaVacia(AUX2)) do begin
    agregar(DATOS, desapilar(AUX2));
  end;
  
  writeFila(DATOS);
end.