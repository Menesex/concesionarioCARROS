Algoritmo Co
	//Un consesionario de autos requiere gestionar la venta de vehiculos que realiza al mes, para ello se tiene la siguiente información
	//Marca - Modelo - Precio - Características - Fabricante.
	//Los vehiculos pueden ser importados o nacional y dentro de sus categorias existen
	
	//* Veh. livianos
	//* Motocicletas *Cuatrimotos 
	//*Vehiculos pesados  * *Veh. de carga
	
	//Las motocicletas y lsa cuatrimotos nacionales reciben un descuento del 30% siempre y cuando su cilindraje no supere los 250cc
	//Los Veh. Livianos tienen un dto del 15%, siempre y cuando su precio no supere los 100Millones 
	//Para los vehiculos pesados y de carga se incrementa en un 30% su valor
	//Todo vehiculo debe pagar un impuesto de importe el cual tiene un valor para las motos del 20% *Veh. livianos 30% *V. Pesados y carga 45%
	
	Escribir "Su tipo de vehiculo es: (1.Nacional | 2.Importado)"
	Leer tipoVehInt
	
	Escribir "Escoja el tipo vehiculo vendido"
	Escribir "1 = Motocicleta o cuatrimoto"
	Escribir "2 = Vehiculo pesado o de carga"
	Escribir "3 = Vehiculo liviano"
	leer vehiculoVendidoInt
	
	//PEDIR CILINDRAJE EN CASO DE MOTO
	si vehiculoVendidoInt = 1 Entonces
		Escribir "Especifique el cilindraje: "
		leer cilindrajeInt
	FinSi
	
	Escribir "Digite el precio inicial del vehiculo: "
	Leer precioInicialFlt
	
	//PROCESO
	// Calcular el precio del vehiculo si es importado
	si tipoVehInt = 2 Entonces
		Segun vehiculoVendidoInt Hacer
			1:
				precioConImporteFlt = (precioInicialFlt) + (precioInicialFlt * 0.2)
				
				si (cilindrajeInt <= 250) Entonces
					precioFinalFlt = (precioConImporteFlt) - (precioConImporteFlt*0.30)
				SiNo
					precioFinalFlt <- precioConImporteFlt
				FinSi
				
			2:
				precioFinalFlt = ((precioInicialFlt) + (precioInicialFlt*0.30) + (precioInicialFlt*0.45))
				
			3:
				si (precioInicialFlt < 100000000)
					precioFinalFlt = (precioInicialFlt) - (precioInicialFlt*0.15) +(precioInicialFlt*0.30)
				SiNo
					precioFinalFlt <- precioInicialFlt
				FinSi
	
		Fin Segun
	
	FinSi
	
	// Calcular el precio del vehiculo si es importado
	si tipoVehInt = 1 Entonces
		Segun vehiculoVendidoInt Hacer
			1:
				si cilindrajeInt <= 250 Entonces
					precioFinalFlt = (precioInicialFlt) - (precioInicialFlt*0.30)
				SiNo
					precioFinalFlt <- precioInicialFlt
				FinSi
				
			2:// se incrementa 30% el valor todos los vehiculos pesados
				precioFinalFlt = (precioInicialFlt) + (precioInicialFlt*0.30)
				
			3:
				si (precioInicialFlt < 100000000)
					precioFinalFlt = (precioInicialFlt) - (precioInicialFlt*0.15)
				SiNo
					precioFinalFlt <- precioInicialFlt
				FinSi
	
		Fin Segun
		
	FinSi

	
	Escribir "Su precio final del vehiculo es: ", precioFinalFlt
	
	
FinAlgoritmo
