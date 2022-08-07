// ------------- INCOMPLETO ------------------------

program ejercicio13;

{ Si la cantidad de elementos de dada es par, pasar el elemento del tope de la
  pila aux a la pila par, y si es impar, a la pila impar
}

{$INCLUDE /IntroProg/Estructu}

var dada, dada2, aux, par, impar: pila;

begin

    inicPila(dada, '1 2 3 4 5 6');
    inicPila(aux, '15');
    inicPila(par, '');
    inicPila(impar, '');

    writePila(dada);
    writePila(aux);
    writePila(par);
    writePila(impar);
end.