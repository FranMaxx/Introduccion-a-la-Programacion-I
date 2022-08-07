program ejercicio6;

{ Este programa inserta un caracter en un arreglo ordenado alfabeticamente
  haciendo un corrimiento hacia la derecha }

const
    min = 1;
    max = 5;
    
type
    arrType = Array [min..max] of char;
    
procedure cargarArreglo(var arr: arrType);
var i: integer;
    valor: char;
begin
    i:= 0;
    
    for i:= min to max do begin
        writeln('Ingrese un caracter');
        
        readln(valor);
        arr[i]:= valor;
    end;
end;    

procedure insertarCaracter(var arr: arrType; caracter: char);
var i, maximo: integer;
begin
    i:= 1;
    
    // Mientras que el caracter sea igual o mayor que el caracter en esa posición, incrementar
    while (caracter >= arr[i]) and (i < max) do
        i:= i + 1;
    
    maximo:= max;
    while maximo <> i do begin
        arr[maximo]:= arr[maximo - 1];
        maximo:= maximo - 1;
    end;
        
    arr[i]:= caracter;
end;

procedure imprimirArreglo(arr: arrType);
var i: integer;
begin    
    i:= 0;
    
    writeln('Su arreglo quedaria...');
    
    for i:= min to max do begin
        write('| ');
        write(arr[i]);
        write(' | ');
    end;
end;

//-------------PROGRAMA PRINCIPAL-------------//
var datos: arrType;
    caracter: char;
begin
    cargarArreglo(datos);
    
    writeln('Ingrese un caracter para insertar');
    readln(caracter);
    
    insertarCaracter(datos, caracter);
    imprimirArreglo(datos);
end.