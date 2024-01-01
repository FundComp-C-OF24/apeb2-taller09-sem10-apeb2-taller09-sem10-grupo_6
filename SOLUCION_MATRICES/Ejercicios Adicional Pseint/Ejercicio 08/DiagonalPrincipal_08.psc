Algoritmo ElementosDiagonalPrincipal
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
	
    Escribir "----ELEMENTOS DE LA DIAGONAL PRINCIPAL------"
    Para i <- 0 Hasta limMt - 1 Hacer
        Escribir Sin Saltar mt[i, i], " | "
    FinPara
    Escribir " "
    
    Escribir "----ELEMENTOS POR ENCIMA DE LA DIAGONAL PRINCIPAL------"
    Para i <- 0 Hasta limMt - 1 Hacer
        Para j <- 0 Hasta limMt - 1 Hacer
            Si (j > i) Entonces
                Escribir Sin Saltar mt[i, j], " | "
            FinSi
        FinPara
    FinPara
    Escribir " "
    
    Escribir "----ELEMENTOS POR DEBAJO DE LA DIAGONAL PRINCIPAL------"
    Para i <- 0 Hasta limMt - 1 Hacer
        Para j <- 0 Hasta limMt - 1 Hacer
            Si (j < i) Entonces
                Escribir Sin Saltar mt[i, j], " | "
            FinSi
        FinPara
    FinPara
    Escribir " "
	
FinAlgoritmo
