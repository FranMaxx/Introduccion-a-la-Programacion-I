{
    3.1) La condición del ciclo es que mientras la Pila1 NO esté vacia, que
    se desapile la pila Descarte y se apile la Pila2.
    
    3.2) El ciclo nunca finaliza ya que mientras tenga 1 elemento Pila1 y no
    se modifique esa pila, la condición del ciclo será siempre verdadera y
    se seguira ejecutando infinitamente.
    Eventualmente tirará: "ERROR: Se desapilo un elemento de una pila vacia"
    cuando la pila Descarte se quede sin elementos para desapilar.
    
    3.3) 
    while not (pilaVacia(Descarte)) do
    begin
        apilar(Pila2, desapilar(Descarte));
    end;
    
    3.4) Ahora este codigo realiza la función de mientras la pila Descarte
    NO esté vacia, que se desapile esta misma y se apile en Pila1.
    
    3.5) En un programa se asegura siempre que se llegará a un corte dentro
    del ciclo de repetición condicional si la condición que se impuso pasa
    a ser falsa.
    
    3.6) Si, es posible hacerlo manualmente.
}
