Algoritmo ElementosDiagonal
    Definir limMt, i, j Como Entero
	Escribir "Ingrese el tamaño de la matriz cuadrada"
	Leer limMt
    Dimension mt[limMt, limMt]
	
    Para i <- 0 Hasta limMt - 1 Hacer
        Para j <- 0 Hasta limMt - 1 Hacer
            mt[i, j] <- Aleatorio(-9, 9)
        FinPara
    FinPara
	
    Escribir "Matriz Completa"
    Para i <- 0 Hasta limMt - 1 Hacer
        Para j <- 0 Hasta limMt - 1 Hacer
            Escribir Sin Saltar mt[i, j], " | "
        FinPara
        Escribir " "
    FinPara
	
    Escribir "----ELEMENTOS DE LA DIAGONAL SECUNDARIA------"
    Para i <- 0 Hasta limMt - 1 Con Paso 1 Hacer
        Escribir Sin Saltar mt[i, (limMt - i) - 1], " | "
    FinPara
	Escribir " "
	
    Escribir "----ELEMENTOS SOBRE LA DIAGONAL SECUNDARIA------"
    Para i <- 0 Hasta limMt - 1 Hacer
        Para j <- 0 Hasta limMt - 1 Hacer
            Si (j < (limMt - i) - 1) Entonces
                Escribir Sin Saltar mt[i, j], " | " 
            FinSi
        FinPara
    FinPara
    Escribir " "
    
    Escribir "----ELEMENTOS DEBAJO DE LA DIAGONAL SECUNDARIA------"
    Para i <- 0 Hasta limMt - 1 Hacer
        Para j <- 0 Hasta limMt - 1 Hacer
            Si (j > (limMt - i) - 1) Entonces
                Escribir Sin Saltar mt[i, j], " | "
            FinSi
        FinPara
    FinPara
    Escribir " "
    
FinAlgoritmo
