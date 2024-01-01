Algoritmo FiguraRombo
    Definir altura, i, j, limite Como Entero
    altura = 4
    limite = altura * 2 - 1
    
    Para i <- 0 Hasta altura-1 Con Paso 1 Hacer
        Para j <- 0 Hasta limite Con Paso 1 Hacer
            Si (j >= (altura - i) - 1) Y j <= altura + i - 1 Entonces
                Escribir Sin Saltar "* "
            Sino
                Escribir Sin Saltar "  "
            FinSi
        FinPara
        Escribir ""
    FinPara
    
    Para i <- altura-2 Hasta 0 Con Paso -1 Hacer
        Para j <- 0 Hasta limite Con Paso 1 Hacer
            Si (j >= (altura - i) - 1) Y (j <= (altura + i) - 1) Entonces
                Escribir Sin Saltar "* "
            Sino
                Escribir Sin Saltar "  "
            FinSi
        FinPara
        Escribir ""
    FinPara
    
FinAlgoritmo
