program  ejercicio10;

{ Realizar un procedimiento que dado un arreglo de N caracteres, carga en un arreglo de N-1
valores booleanos, las comparaciones de los pares de valores consecutivos del primer arreglo. El
valor booleano es en la primer posición es True si el primer carácter es menor o igual que el
segundo, y False si es mayor }

const
    min = 1;
    max = 5;
    maxBoolean = max - 1;
type
    typeNumber = array [min..max] of integer;
    typeBoolean = array [min..maxBoolean] of boolean;

procedure cargarArregloNumbers(var arrNumbers: typeNumber);
var i: integer;
    val: integer;
begin
    writeln('Ingrese numeros para cargar el arreglo...');
    
    for i:= min to max do begin
        write('[ ', i, ' ] - ');
        
        readln(val);
        arrNumbers[i]:= val;
    end;
end;

// Imprimo de manera manual y no como un metodo porque no se pueden imprimir un arreglo de booleans
procedure cargarArregloBooleans(arrNumbers: typeNumber; var arrBooleans: typeBoolean);
var pos, next: integer;
begin
    pos:= min;
    next:= pos + 1;
    
    while pos <= maxBoolean do begin
        
        if (arrNumbers[pos] <= arrNumbers[next]) then begin
            arrBooleans[pos]:= true;
            
            writeln(arrBooleans[pos]);
        end else begin
            arrBooleans[pos]:= false;
            
            writeln(arrBooleans[pos]);
        end;
        
        pos+= 1;
        next+= 1;
    end;
end;

// ------- PROGRAMA PRINCIPAL ------- //
var arrNumbers: typeNumber;
    arrBooleans: typeBoolean;
begin
    cargarArregloNumbers(arrNumbers);
    
    cargarArregloBooleans(arrNumbers, arrBooleans);
end.