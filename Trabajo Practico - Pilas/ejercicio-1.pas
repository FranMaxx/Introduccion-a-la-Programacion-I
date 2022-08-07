program ejercicio1;

{ Este programa pasa 2 elementos de la pila DADA a la pila CJTO1 y 1 elemento a la pila CJTO2}

{$INCLUDE /IntroProg/Estructu}

var DADA, CJTO1, CJTO2: pila;

begin
    readPila(DADA);
    inicPila(CJTO1, '');
    inicPila(CJTO2, '');
    
    if not pilaVacia(DADA) then begin
        apilar(CJTO1, desapilar(DADA));
        apilar(CJTO1, desapilar(DADA));
        apilar(CJTO2, desapilar(DADA));
    end else begin
        writeln('La pila DADA está vacia');
    end;
    
    writePila(DADA);
    writePila(CJTO1);
    writePila(CJTO2);
    
    { 
        1.1) Si, importa el orden de las sentencias escritas;
        
        1.2) Si tiene menos de 3 elementos dira: "ERROR: Se desapilo un elemento de una pila vacia".
    }
end.