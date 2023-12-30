Algoritmo GestionInventarioTienda
    Definir precio, iva, totalConIva, totalSinIva Como Real
    Definir numProductos, cantidadDeseada, codigoFacturar Como Entero
    Definir encontrado Como Logico
    encontrado = Falso
    iva = 0.12
    
    Escribir "Ingrese el número de productos a ingresar al inventario: "
    Leer numProductos
    
    Dimension nombresProducto[numProductos]
    Dimension datosProducto[numProductos, 3] 
    
    Para i = 0 Hasta numProductos-1 Con Paso 1 Hacer
        datosProducto[i, 0] = i + 1 
        Escribir "=========================================="
        Escribir "Código del producto: ", datosProducto[i, 0]
        Escribir "Ingrese el nombre del producto ", i+1, ": "
        Leer nombresProducto[i] 
        Escribir "Ingrese el precio del producto: "
        Leer datosProducto[i, 1] 
        Escribir "Ingrese la cantidad del producto: "
        Leer datosProducto[i, 2] 
    FinPara
    
    Escribir "INVENTARIO"
    Para i = 0 Hasta numProductos-1 Hacer
        Escribir "Código: ", datosProducto[i, 0], ", Producto: ", nombresProducto[i]
        Escribir "--> Precio: $", datosProducto[i, 1], ", Cantidad: ", datosProducto[i, 2]
    FinPara
    
    Escribir "=========================================="
    Escribir "FACTURA: "
    Escribir "Ingrese el código del producto a facturar: "
    Leer codigoFacturar
    
    Para i = 0 Hasta numProductos-1 Con Paso 1 Hacer
        Si datosProducto[i, 0] == codigoFacturar Entonces
            encontrado = Verdadero
            Escribir "Ingrese la cantidad deseada a facturar para ", nombresProducto[i], ": "
            Leer cantidadDeseada
            
            precio = datosProducto[i, 1] 
            totalSinIva = precio * cantidadDeseada
            totalConIva = totalSinIva + (totalSinIva * iva)
            
            Si (totalSinIva > 100) Entonces
                Escribir "Su compra ha superado los $100, se ha aplicado un descuento (No se agrega el 12% de IVA)"
                Escribir "Producto: ", nombresProducto[i], ", Cantidad: ", cantidadDeseada
                Escribir "El valor total a pagar es de: $", totalSinIva , " (descuento aplicado)"
            SiNo
                Escribir "Producto: ", nombresProducto[i], ", Cantidad: ", cantidadDeseada
                Escribir "Total a pagar: $", totalSinIva, " , Sumado el IVA (12%): $", totalConIva, " (No se aplica descuento)"
            FinSi
        FinSi
    FinPara
    
    Si (encontrado = Falso) Entonces
        Escribir "El producto no fue encontrado en el inventario."
    FinSi
FinAlgoritmo

