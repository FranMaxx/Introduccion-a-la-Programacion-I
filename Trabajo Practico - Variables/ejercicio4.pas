program ejercicio4;

{ Realizar el DE y el programa para el siguiente problema: Se tiene una fila CHEQUES, donde
cada elemento representa el importe de un cheque, y otra SOCIOS, donde cada elemento representa
el número de carnet de un socio. Determinar cuánto recibe cada socio si se distribuye
equitativamente el total del dinero de los cheques }

{$INCLUDE /IntroProg/Estructu}

procedure cantidadCheques(var cheques: fila; var cantidad: integer);
var auxFila: fila;
begin
  inicFila(auxFila, '');
  
  while not filaVacia(cheques) do begin
    cantidad:= cantidad + primero(cheques);
    agregar(auxFila, extraer(cheques));
  end;
end;

procedure distribuirCheques(socios: fila; cantidad: integer; var total: integer);
var auxFila: fila;
    cantidadSocios: integer;
    
begin
  cantidadSocios:= 0;
  
  while not filaVacia(socios) do begin
    cantidadSocios:= cantidadSocios + 1;
    agregar(auxFila, extraer(socios));
  end;
  
  total:= cantidad div cantidadSocios;
end;

var cheques, socios: fila;
    cantidad, total: integer;
begin
  inicFila(cheques, '500 250 1000 250');
  inicFila(socios, '1 2 3 4');
  cantidad:= 0;
  total:= 0;
  
  cantidadCheques(cheques, cantidad);
  distribuirCheques(socios, cantidad, total);
  
  writeln(total);
end.