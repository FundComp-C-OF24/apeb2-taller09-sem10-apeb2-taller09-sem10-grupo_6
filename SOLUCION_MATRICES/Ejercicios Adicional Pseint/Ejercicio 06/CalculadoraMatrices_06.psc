Algoritmo CalculadoraMatrices
    Definir matrizA, matrizB, resultado Como Real
    Definir opcion Como Caracter
    
    Dimension matrizA[2, 2]
    Dimension matrizB[2, 2]
    Dimension resultado[2, 2]
    
    Definir continuar Como Logico
    continuar = Verdadero
    
    Para i desde 0 hasta 1 Hacer
        Para j desde 0 hasta 1 Hacer
            matrizA[i, j] = Aleatorio(-9, 9)
            matrizB[i, j] = Aleatorio(-9, 9)
        Fin Para
    Fin Para
    
    Escribir "Matriz A:"
    Para i desde 0 hasta 1 Hacer
        Para j desde 0 hasta 1 Hacer
            Escribir Sin Saltar matrizA[i, j], "  | "
        Fin Para
        Escribir "" 
    Fin Para
    
    Escribir "Matriz B:"
    Para i desde 0 hasta 1 Hacer
        Para j desde 0 hasta 1 Hacer
            Escribir Sin Saltar matrizB[i, j], "  | "
        Fin Para
        Escribir "" 
    Fin Para
    
    Repetir
        // Men� de operaciones
        Escribir "Seleccione la operaci�n a realizar:"
        Escribir "1. Suma"
        Escribir "2. Resta"
        Escribir "3. Multiplicaci�n"
        Escribir "4. Divisi�n"
        Escribir "Ingrese una opci�n: "
        Leer opcion
        
        Segun opcion Hacer
            Caso "1":
                Escribir "Suma de matrices:"
                Para i desde 0 hasta 1 Hacer
                    Para j desde 0 hasta 1 Hacer
                        resultado[i, j] = matrizA[i, j] + matrizB[i, j]
                        Escribir Sin Saltar resultado[i, j], "  | "
                    Fin Para
                    Escribir "" 
                Fin Para
				continuar = Falso
            Caso "2":
                Escribir "Resta de matrices:"
                Para i desde 0 hasta 1 Hacer
                    Para j desde 0 hasta 1 Hacer
                        resultado[i, j] = matrizA[i, j] - matrizB[i, j]
                        Escribir Sin Saltar resultado[i, j], "  | "
                    Fin Para
                    Escribir "" 
                Fin Para
				continuar = Falso
            Caso "3":
				Escribir "Multiplicaci�n elemento por elemento de matrices:"
				Para i desde 0 hasta 1 Hacer
					Para j desde 0 hasta 1 Hacer
						resultado[i, j] = matrizA[i, j] * matrizB[i, j]
						Escribir Sin Saltar resultado[i, j], "  | "
					Fin Para
					Escribir ""
				Fin Para
				continuar = Falso
            Caso "4":
                Escribir "Divisi�n de matrices:"
                Para i desde 0 hasta 1 Hacer
                    Para j desde 0 hasta 1 Hacer
                        Si matrizB[i, j] <> 0 Entonces
                            resultado[i, j] = matrizA[i, j] / matrizB[i, j]
                        Sino
                            resultado[i, j] = 0  
                        Fin Si
                        Escribir Sin Saltar resultado[i, j], "  | "
                    Fin Para
                    Escribir "" 
                Fin Para
				continuar = Falso
            De Otro Modo:
                Escribir "Opci�n inv�lida."
        FinSegun
    Hasta Que No continuar
FinAlgoritmo