program ejercicio3;

const
    maxFila = 10;
    maxCol = 10;
    
type
    matriz = array [1..maxFila, 1..maxCol] of integer;
    
procedure cargarMatriz(var mat: matriz);
var i, j, k: integer;
begin
    k:= 1;
    for i:= 1 to maxFila do
        for j:= 1 to maxCol do begin
            mat[i, j]:= k;
            k += 1;
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

function sumarColumna(mat: matriz; col: integer): integer;
var i: integer;
begin
    for i:= 1 to maxFila do
        sumarColumna+= mat[i, col];
end;

function promedioColumna(mat: matriz; col: integer; sumarColumna: integer): integer;
begin
    promedioColumna:= sumarColumna div maxCol;
end;

function sumarFila(mat: matriz; fila: integer): integer;
var j: integer;
begin
    for j:= 1 to maxCol do
        sumarFila+= mat[fila, j];
end;

function promedioFila(mat: matriz; fila: integer; sumarFila: integer): integer;
begin
    promedioFila:= sumarFila div maxFila;
end;

var mat: matriz;
    col, fila: integer;
begin
    cargarMatriz(mat);
    
    writeln('Ingrese la columna que desea sumar...');
    readln(col);
    
    writeln('Ingrese la fila que desea sumar...');
    readln(fila);
    
    writeln;
    writeln('--- Columna N°', col, ' ---');
    writeln('Suma: ', sumarColumna(mat, col));
    writeln('Promedio: ', promedioColumna(mat, col, sumarColumna(mat, col)));
    
    writeln;
    writeln('--- Fila N°', fila, ' ---');
    writeln('Suma: ', sumarFila(mat, fila));
    writeln('Promedio: ', promedioFila(mat, fila, sumarFila(mat, fila)));
    
    writeln;
    writeln('Matriz de ', maxFila, 'x', maxCol, ':');
    mostrarMatriz(mat);
end.
