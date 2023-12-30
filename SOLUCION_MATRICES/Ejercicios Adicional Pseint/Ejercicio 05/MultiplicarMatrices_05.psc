Algoritmo MultiplicarMatrices
    Definir filasA, columnasA, filasB, columnasB, i, j Como Entero
    Definir matrizA, matrizB, resultado Como Entero
    
    Escribir "Ingrese el número de filas de la matriz A:"
    Leer filasA
    Escribir "Ingrese el número de columnas de la matriz A:"
    Leer columnasA
    Dimension matrizA[filasA, columnasA] 
    
    Escribir "Ingrese el número de filas de la matriz B:"
    Leer filasB
    Escribir "Ingrese el número de columnas de la matriz B:"
    Leer columnasB
    Dimension matrizB[filasB, columnasB]
    
	Dimension resultado[filasA, columnasB]
	
    Si columnasA <> filasB Entonces
        Escribir "No se pueden multiplicar las matrices. El número de columnas de A debe ser igual al número de filas de B."
    Sino
        Escribir "Matriz A:"
        Para i desde 0 hasta filasA - 1 Hacer
            Para j desde 0 hasta columnasA - 1 Hacer
                matrizA[i, j] = Aleatorio(-9, 9)
            Fin Para
        Fin Para
        
        Para i desde 0 hasta filasA - 1 Hacer
            Para j desde 0 hasta columnasA - 1 Hacer
                Escribir Sin Saltar matrizA[i, j], "  | "
            Fin Para
            Escribir "" 
        Fin Para
		
        Escribir "Matriz B:"
        Para i desde 0 hasta filasB - 1 Hacer
            Para j desde 0 hasta columnasB - 1 Hacer
                matrizB[i, j] = Aleatorio(-9, 9)
            Fin Para
        Fin Para
        
        Para i desde 0 hasta filasB - 1 Hacer
            Para j desde 0 hasta columnasB - 1 Hacer
                Escribir Sin Saltar matrizB[i, j], "  | "
            Fin Para
            Escribir "" 
        Fin Para
        
        Escribir "Resultado de la multiplicación:"
        Para i desde 0 hasta filasA - 1 Hacer
            Para j desde 0 hasta columnasB - 1 Hacer
				resultado[i, j] = matrizA[i, j] * matrizB[i, j]
                Escribir Sin Saltar resultado[i, j], "  | "
            Fin Para
            Escribir "" 
        Fin Para
    Fin Si
FinAlgoritmo
