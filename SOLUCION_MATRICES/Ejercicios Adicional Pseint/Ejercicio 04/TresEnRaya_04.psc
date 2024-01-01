Algoritmo TresEnRaya
    Definir player1, player2, tabla Como Caracter
    Definir i, j, limit Como Entero
    limit = 3
    Dimension tabla[limit, limit]
    Definir turno Como Entero
    Definir juego_terminado Como logico
    terminar = Falso
    
    Escribir "   0   1   2 "
    Para i = 0 Hasta limit-1 Con Paso 1 Hacer
        Escribir Sin Saltar i , "|" 
        Para j = 0 Hasta limit-1 Con Paso 1 Hacer
            tabla[i, j] = " - " 
            Escribir Sin Saltar tabla[i, j] 
            Si j < limit-1 Entonces
                Escribir Sin Saltar "|"
            FinSi
        FinPara
        Escribir ""
    FinPara
    
    Para turno = 1 Hasta limit * limit Con Paso 1 Hacer
        Si terminar = Verdadero Entonces
        FinSi
        
        Si turno MOD 2 = 1 Entonces
            Escribir "Turno del Jugador 1 (X)"
        Sino
            Escribir "Turno del Jugador 2 (O)"
        FinSi
        
        Escribir "Ingrese la fila y la columna para colocar:"
        Escribir "Fila:"
        Leer i
        Escribir "Columna:"
        Leer j
        
        Si i >= 0 Y i < limit Y j >= 0 Y j < limit Y tabla[i, j] = " - " Entonces
            Si turno MOD 2 = 1 Entonces
                tabla[i, j] = " X "
            Sino
                tabla[i, j] = " O "
            FinSi
        Sino
            Escribir "Ya se ha colocado una ficha en esta posición. Elija otra."
            turno = turno - 1 
        FinSi
        
        Escribir "Tablero actualizado:"
        Escribir "   0   1   2 "
        Para i = 0 Hasta limit-1 Con Paso 1 Hacer
            Escribir Sin Saltar i , "|" 
            Para j = 0 Hasta limit-1 Con Paso 1 Hacer
                Escribir Sin Saltar tabla[i, j] 
                Si j < limit-1 Entonces
                    Escribir Sin Saltar "|"
                FinSi
            FinPara
            Escribir ""
        FinPara
        
        Para i = 0 Hasta limit-1 Con Paso 1 Hacer
            Si (tabla[i, 0] = tabla[i, 1] Y tabla[i, 1] = tabla[i, 2] Y tabla[i, 0] <> " - ") O (tabla[0, i] = tabla[1, i] Y tabla[1, i] = tabla[2, i] Y tabla[0, i] <> " - ") Entonces
                Si tabla[i, 0] = " X " Entonces
                    Escribir "¡El Jugador 1 (X) ha ganado!"
                Sino
                    Escribir "¡El Jugador 2 (O) ha ganado!"
                FinSi
                terminar = Verdadero
				//romper ciclo      // Lo comento ya que pseint no usa Salir del Ciclo o similitudes
            FinSi
        FinPara
        
        Si (tabla[0, 0] = tabla[1, 1] y tabla[1, 1] = tabla[2, 2] y tabla[0, 0] <> " - ") O (tabla[0, 2] = tabla[1, 1] y tabla[1, 1] = tabla[2, 0] y tabla[0, 2] <> " - ") Entonces
            Si tabla[1, 1] = " X " Entonces
                Escribir "¡EL JUGADOR 1 (X) HA GANADO!"
            Sino
                Escribir "¡EL JUGADOR 2 (O) HA GANADO!"
            FinSi
            terminar = Verdadero
			//romper ciclo      // Lo comento ya que pseint no usa Salir del Ciclo o similitudes
        FinSi
        
        Si turno = limit * limit Entonces
            Escribir "¡EL JUEGO HA TERMINADO EN EMPATE!"
            terminar = Verdadero
        FinSi
    FinPara
FinAlgoritmo
