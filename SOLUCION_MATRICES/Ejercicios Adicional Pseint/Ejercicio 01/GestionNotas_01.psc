Algoritmo GestionNotas
    Definir limEsts, limNotas, i, j Como Entero
    limEsts = 28
    limNotas = 3
	Definir mayorPromedio, menorPromedio Como Real
    Definir estudianteMayor, estudianteMenor Como Caracter
	
    Definir arrNombEst Como Caracter
    Definir arrNotasEst, arrPromEst Como Real
    Dimension arrNombEst[limEsts]
    Dimension arrNotasEst[limEsts, limNotas]
    Dimension arrPromEst[limEsts]
    Definir promedioCurso, sumaPromedios Como Real
    sumaPromedios = 0
	
    Para i=0 Hasta limEsts-1 Con Paso 1 Hacer
        Para j=0 Hasta limNotas-1 Con Paso 1 Hacer
            arrNotasEst[i,j] = Azar(11) - 1
        FinPara
    FinPara
	
    Para i=0 Hasta limEsts-1 Con Paso 1 Hacer
        Escribir "Ingrese nombre del Estudiante: "
        Leer arrNombEst[i]
    FinPara
	
    Para i=0 Hasta limEsts-1 Con Paso 1 Hacer
        arrPromEst[i] = (arrNotasEst[i,0] * 0.35) + (arrNotasEst[i,1] * 0.35) + (arrNotasEst[i,2] * 0.3)
        sumaPromedios = sumaPromedios + arrPromEst[i]
    FinPara
	
    promedioCurso = sumaPromedios / limEsts
	
	Para i=0 Hasta limEsts-1 Con Paso 1 Hacer
		Escribir "Promedio del estudiante ", arrNombEst[i], ": ", arrPromEst[i]
	FinPara
	
    Escribir "Promedio del curso: ", promedioCurso
	Escribir "=============================================="
    Escribir "Estudiantes con promedio superior al del curso:"
    Para i=0 Hasta limEsts-1 Con Paso 1 Hacer
        Si arrPromEst[i] > promedioCurso Entonces
            Escribir arrNombEst[i], " | PROMEDIO: ", arrPromEst[i]
        FinSi
    FinPara
	Escribir "==============================================="
    Escribir "Estudiantes con promedio inferior al del curso:"
    Para i=0 Hasta limEsts-1 Con Paso 1 Hacer
        Si arrPromEst[i] < promedioCurso Entonces
            Escribir arrNombEst[i], " | PROMEDIO: ", arrPromEst[i]
        FinSi
    FinPara
	Escribir "=============================================="
	
    mayorPromedio = arrPromEst[0]
    menorPromedio = arrPromEst[0]
	
    Para i=1 Hasta limEsts-1 Con Paso 1 Hacer
        Si arrPromEst[i] > mayorPromedio Entonces
            mayorPromedio = arrPromEst[i]
            estudianteMayor = arrNombEst[i]
        FinSi
		
        Si arrPromEst[i] < menorPromedio Entonces
            menorPromedio = arrPromEst[i]
            estudianteMenor = arrNombEst[i]
        FinSi
    FinPara
	
    Escribir "Estudiante con el mayor promedio: ", estudianteMayor, " | Promedio: ", mayorPromedio
    Escribir "Estudiante con el menor promedio: ", estudianteMenor, " | Promedio: ", menorPromedio
FinAlgoritmo
