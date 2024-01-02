Algoritmo GestionInventarioCompleto
    Definir producto, busqueda Como Caracter
    Definir precio Como Real
    Definir cantidad, numProdMax, contador, opcion, encontrado, i, j Como Entero
    
    Escribir "¿Cuántos productos deseas ingresar? "
    Leer numProdMax
    
    contador = 0
    Dimension invent[numProdMax, 3]  
    Dimension nombres[numProdMax]   
    
    Mientras contador < numProdMax Hacer
        Escribir "Ingrese el nombre del producto: "
        Leer nombres[contador] 
        Escribir "Ingrese el precio del producto: "
        Leer invent[contador, 1]
        Escribir "Ingrese la cantidad disponible: "
        Leer invent[contador, 2]
        
        contador = contador + 1
    FinMientras
    
    Escribir "TABLA DE INVENTARIO"
    Escribir "Nombre | Precio | Cantidad"
    Para i = 0 Hasta contador - 1 Con Paso 1 Hacer
        Escribir nombres[i], " |   ", invent[i, 1], "   |    ", invent[i, 2]
    FinPara
    
    Mientras opcion <> 6 Hacer
        Escribir "MENU:"
        Escribir "1. Agregar nuevos productos"
        Escribir "2. Actualizar existencias"
        Escribir "3. Buscar productos"
        Escribir "4. Eliminar productos"
        Escribir "5. Mostrar inventario"
        Escribir "6. Salir"
        Leer opcion
        
        Segun opcion Hacer
            Caso 1:
                Escribir "¿Cuántos productos deseas agregar? "
                Leer cantidad
                Dimension nombreNuevos[cantidad]
                Dimension nuevosProductos[cantidad, 2]
                
                Para i = 0 Hasta cantidad - 1 Con Paso 1 Hacer
                    Escribir "Ingrese el nombre del producto: "
                    Leer nombreNuevos[i]
                    
                    Escribir "Ingrese el precio del producto: "
                    Leer nuevosProductos[i, 0] 
                    
                    Escribir "Ingrese la cantidad disponible: "
                    Leer nuevosProductos[i, 1] 
                FinPara
                
                Escribir "TABLA DE INVENTARIO ACTUALIZADA"
                Escribir "Nombre | Precio | Cantidad"
                Para i = 0 Hasta contador - 1 Con Paso 1 Hacer
                    Escribir nombres[i], " |   ", invent[i, 1], "   |    ", invent[i, 2]
					Escribir nombreNuevos[i], " |   ", nuevosProductos[i, 0], "   |    ", nuevosProductos[i, 1]
                FinPara
				contador = contador + cantidad
            Caso 2:
                Escribir "Ingrese el nombre del producto a actualizar: "
                Leer busqueda
                encontrado = -1
                Para i = 0 Hasta contador - 1 Con Paso 1 Hacer
                    Si nombres[i] = busqueda Entonces
                        encontrado = i
                        Escribir "Ingrese la nueva cantidad para ", nombres[i], ": "
                        Leer invent[i, 2]
                        Escribir "Existencias actualizadas."
                    FinSi
                FinPara
                Si encontrado = -1 Entonces
                    Escribir "Producto no encontrado."
                FinSi
            Caso 3:
                Escribir "Ingrese el nombre del producto a buscar: "
                Leer busqueda
                encontrado = -1
                Para i = 0 Hasta contador - 1 Con Paso 1 Hacer
                    Si nombres[i] = busqueda Entonces
                        encontrado = i
                        Escribir "Producto encontrado:"
                        Escribir "Nombre: ", nombres[i]
                        Escribir "Precio: ", invent[i, 1]
                        Escribir "Cantidad: ", invent[i, 2]
                    FinSi
                FinPara
                Si encontrado = -1 Entonces
                    Escribir "Producto no encontrado."
                FinSi
            Caso 4:
                Escribir "Ingrese el nombre del producto a eliminar: "
                Leer busqueda
                encontrado = -1
                Para i = 0 Hasta contador - 1 Con Paso 1 Hacer
                    Si nombres[i] = busqueda Entonces
                        encontrado = i
                        Para j = i Hasta contador - 2 Con Paso 1 Hacer
                            nombres[j] = nombres[j + 1]
                            invent[j, 1] = invent[j + 1, 1]
                            invent[j, 2] = invent[j + 1, 2]
                        FinPara
                        contador = contador - 1
                        Escribir "Producto eliminado."
                        i = contador  
                    FinSi
                FinPara
                Si encontrado = -1 Entonces
                    Escribir "Producto no encontrado."
                FinSi
            Caso 5:
                Escribir "TABLA DE INVENTARIO"
                Escribir "Nombre | Precio | Cantidad"
                Para i = 0 Hasta contador - 1 Con Paso 1 Hacer
                    Escribir nombres[i], " |   ", invent[i, 1], "   |    ", invent[i, 2]
                FinPara
            Caso 6:
                Escribir "Saliendo del programa."
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
    FinMientras
    
    Escribir "TABLA DE INVENTARIO FINAL"
    Escribir "Nombre | Precio | Cantidad"
    Para i = 0 Hasta contador - 1 Con Paso 1 Hacer
        Escribir nombres[i], " |   ", invent[i, 1], "   |    ", invent[i, 2]
    FinPara
FinAlgoritmo