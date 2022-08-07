program ejercicio1;

const
    maxFila = 3;
    maxCol = 3;
    
type
    matriz = array [1..maxFila, 1..maxCol] of integer;
    
procedure cargarMatriz(var mat: matriz);
var i, j: integer;
begin
    for i:= 1 to maxFila do
        for j:= 1 to maxCol do begin
            write('[', i, '][', j, '] - ');
            readln(mat[i, j]);
        end;
end;

procedure mostrarMatriz(mat: matriz);
var i, j: integer;
begin
    for i:= 1 to maxFila do begin
        for j:= 1 to maxCol do
            write('[ ', mat[i, j], ' ]');
        writeln;
    end;
end;

var mat: matriz;
begin
    writeln('Ingrese números para cargar su matriz de ', maxFila, 'x', maxCol);
    cargarMatriz(mat);
    
    writeln;
    writeln('Matriz de ', maxFila, 'x', maxCol, ':');
    mostrarMatriz(mat);
end.
