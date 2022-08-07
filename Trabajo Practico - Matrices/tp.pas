program tpMatrices;

{ Comentarios }

const
    min = 1;
    maxFilasYColumnas = 5;
    maxPatron = maxFilasYColumnas - 1;
    asterisco = '*';
    
type
    typeMatriz = array [min..maxFilasYColumnas, min..maxFilasYColumnas] of char;
    typePatron = array [min..maxPatron] of char;

{ Probar con patron O J O S  que se rompe el programa }

{ Probar con palabras mas largas de las que realmente se encuentran que rompen el programa}

{ 1- ¿El usuario debe ingresar la longitud de la matriz cuadrada? ¿O lo elegimos nosotros como constante?

2- ¿Declaro el asterisco como constante?

3- ¿Conviene meter llenarPatronDiscernible dentro de cargarPatron? }

procedure cargarMatriz(var letras: typeMatriz);
var i, j: integer;
begin
    {for i:= min to maxFilasYColumnas do
        for j:= min to maxFilasYColumnas do begin
            //write('[', i, '][', j, '] - ');
            //readln(letras[i, j]);
            //letras[i, j]:= 'A'
        end;}
        
    letras[1, 1]:= '.';
    letras[1, 2]:= '.';
    letras[1, 3]:= '.';
    letras[1, 4]:= '.';
    letras[1, 5]:= 'B';
    letras[2, 1]:= '.';
    letras[2, 2]:= '.';
    letras[2, 3]:= '.';
    letras[2, 4]:= 'J';
    letras[2, 5]:= '.';
    letras[3, 1]:= '.';
    letras[3, 2]:= '.';
    letras[3, 3]:= 'O';
    letras[3, 4]:= '.';
    letras[3, 5]:= '.';
    letras[4, 1]:= '.';
    letras[4, 2]:= 'A';
    letras[4, 3]:= '.';
    letras[4, 4]:= '.';
    letras[4, 5]:= '.';
    letras[5, 1]:= 'B';
    letras[5, 2]:= '.';
    letras[5, 3]:= '.';
    letras[5, 4]:= '.';
    letras[5, 5]:= '.';
end;

procedure llenarPatronDiscernible(var patron: typePatron);
var i: integer;
begin
    for i:= min to maxPatron do
        patron[i]:= asterisco;
end;

procedure cargarPatron(var patron: typePatron; var frontera: integer);
var i: integer;
    val: char;
begin
    i:= 1;
    val:= 'a';
    
    while (val <> asterisco) and (i <= maxPatron) do begin
        writeln('Escriba "', asterisco, '" para CANCELAR');
        write('[', i, '] - ');
        readln(val);
        
        patron[i]:= val;
        
        i+= 1;
        frontera += 1;
    end;
end;

function seEncuentraPatron(letras: typeMatriz; patron: typePatron; frontera: integer): boolean;
var i, j, k: integer;
begin
    i:= maxFilasYColumnas;
    j:= min;
    k:= 1;
    
    seEncuentraPatron:= false;
    
    while (i >= min) and (j <= maxFilasYColumnas) do begin
        
        if letras[i, j] = patron[k] then begin
            
            if letras[i, j] = patron[frontera - 1] then
                seEncuentraPatron:= true;
                
            k+= 1;
        end;
            
        i-= 1;
        j+= 1;
    end;
end;

procedure corrimientoCircular(var letras: typeMatriz; patron: typePatron; frontera: integer);
var i, j, last: integer;
    aux: char;
begin
    i:= maxFilasYColumnas;
    j:= min;
    last:= frontera - 1;
   
   { Se ejecutara el corrimiento circular ÚNICAMENTE si:
       - La primera letra del patrón es DIFERENTE a la primera letra de la posición de inicio de la diagonal secundaria
       - O si la última letra del patrón es DIFERENTE a la letra de la diagonal donde iria la última letra del patrón
       
       Basicamente esto verifica que no ocurra errores al haber por ejemplo, 2 letras iguales seguidas que interfieran con el patrón
       
       ---- NO FUNCIONA CUANDO HAY 3 LETRAS IGUALES ----
   }
    while (letras[maxFilasYColumnas, min] <> patron[1]) or (letras[(maxFilasYColumnas + 1) - last, last] <> patron[last]) do begin
        
        aux:= letras[maxFilasYColumnas, min];
    
        while (i >= min) and (j <= maxFilasYColumnas) do begin
            
            letras[i, j]:= letras[i - 1, j + 1];
            
            i-= 1;
            j+= 1;
        end;
        
        i:= maxFilasYColumnas;
        j:= min;
        
        letras[min, maxFilasYColumnas]:= aux;
        
    end;
    
end;

procedure mostrarMatriz(letras: typeMatriz);
var i, j: integer;
begin
    for i:= min to maxFilasYColumnas do begin
        for j:= min to maxFilasYColumnas do
            write('[ ', letras[i, j], ' ]');
        writeln;
    end;
end;

procedure mostrarPatron(patron: typePatron);
var i: integer;
begin
    for i:= min to maxPatron do
        write(patron[i], ' ');
end;

var letras: typeMatriz;
    patron: typePatron;
    i, j, frontera: integer;
begin
    frontera:= 0;
    
    {writeln('Por favor, ingrese carácteres a su matriz...');}
    cargarMatriz(letras);
    
    llenarPatronDiscernible(patron);
    
    {writeln;}
    writeln('Por favor, ingrese carácteres a su patrón (', maxPatron, ' max)');
    cargarPatron(patron, frontera);
    
    writeln;
    write('Patrón: ');
    mostrarPatron(patron);
    writeln;
    
    writeln;
    writeln('Matriz de ', maxFilasYColumnas, 'x', maxFilasYColumnas, ' ORIGINAL:');
    mostrarMatriz(letras);
    writeln;
    
    if (seEncuentraPatron(letras, patron, frontera) = true) then begin
        
        corrimientoCircular(letras, patron, frontera);
        
        writeln('Matriz de ', maxFilasYColumnas, 'x', maxFilasYColumnas, ' MODIFICADA:');
        mostrarMatriz(letras);
        
    end else begin
        writeln('Lo siento, no se ha encontrado el patrón.')
    end;

end.