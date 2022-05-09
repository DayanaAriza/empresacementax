Algoritmo EmpresaCementax
	definir id Como entero
	definir nom_tb como caracter
	definir sal_bas_h Como Real
	definir prod_dia como real
	definir prod_min como real 
	definir h_tra Como Real
	Definir jornal Como Real
	Definir sal_totl Como Real
	
	escribir "Digite el nombre del trabajador " Sin Saltar 
	leer nom_tb
	escribir "Digite el código del trabajador" Sin Saltar
	leer id
	escribir "Digite el valor de la hora de trabajo "
	Escribir "Nota: no debe ser mayor a $25.000" Sin Saltar
	leer sal_bas_h
	
	mientras sal_bas_h > 25000 hacer 
		escribir "Digite un valor valido" 
		leer sal_bas_h
	FinMientras
	
	escribir "Digite el minimo de bultos a producir" Sin Saltar
	leer prod_min
	escribir "Bultos producidos en el día " Sin Saltar
	leer prod_dia
	escribir "Ingrese la cantidad de horas trabajadas " Sin Saltar
	leer h_tra
	Borrar Pantalla
	
	
	si prod_min <= prod_dia y h_tra >= 6 Entonces //se valida la produccion minima y el minimo tiempo de trabajo
		//Se paga el salario + bonificación y sigue trabajando
		jornal = h_tra*sal_bas_h
		bonifi = jornal * 0.10
		sal_totl = jornal+bonifi
		Escribir "<-------RESUMEN-------->"
		
		Escribir "Nombre : " nom_tb
		Escribir "Codigo : " id
		Escribir "Bultos : " prod_dia
		Escribir "Tiempo laborado  : " h_tra "h"
		Escribir "Jornal           : $" jornal
		Escribir "Bonificación 10% : $" bonifi
		Escribir "Salario total    : $" sal_totl
		
		Escribir nom_tb " continuará laborando"
	SiNo
		
		si prod_dia <= prod_min y h_tra >= 6 Entonces //se valida la produccion minima y el tiempo de trabajo
			//Se paga el salario sin bonificacion y sigue trabajando 
			jornal = h_tra*sal_bas_h
			Escribir "<-------RESUMEN-------->"
			
			Escribir "Nombre : " nom_tb
			Escribir "Codigo : " id
			Escribir "Bultos : " prod_dia
			Escribir "Tiempo laborado  : " h_tra "h"
			Escribir "Jornal           : $" jornal
			Escribir "Bonificación 10% : $" bonifi
			Escribir "Salario total    : $" sal_totl
			
			
			Escribir nom_tb " continuará laborando"
			
		FinSi
		
		
	FinSi
	//***********************************************************************
	si prod_dia >= prod_min y h_tra < 6 Entonces //se valida la produccion minima y el tiempo de trabajo
		//se le paga el salario + bonificacion y queda despedido
		jornal = h_tra*sal_bas_h
		bonifi = jornal * 0.10
		sal_totl = jornal+bonifi
		Escribir "<-------RESUMEN-------->"
		
		Escribir "Nombre : " nom_tb
		Escribir "Codigo : " id
		Escribir "Bultos : " prod_dia
		Escribir "Tiempo laborado  : " h_tra "h"
		Escribir "Jornal           : $" jornal
		Escribir "Bonificación 10% : $" bonifi
		Escribir "Salario total    : $" sal_totl
		
		Escribir nom_tb " queda despedid@"
		Escribir "laboró menos del tiempo pactado."
		
	SiNo
		
		si prod_dia <= prod_min y h_tra < 6 Entonces //se valida la produccion minima y el tiempo de trabajo
			//se le paga el salario sin bonificacion y queda despedido 
			jornal = h_tra*sal_bas_h
			Escribir "<-------RESUMEN-------->"
			
			Escribir "Nombre : " nom_tb
			Escribir "Codigo : " id
			Escribir "Bultos : " prod_dia
			Escribir "Tiempo laborado  : " h_tra "h"
			Escribir "Jornal           : $" jornal
			Escribir "Bonificación 10% : $" bonifi
			Escribir "Salario total    : $" jornal
			
			Escribir nom_tb " queda despedid@"
			Escribir "laboró menos del tiempo pactado."
			
			
			
		FinSi
	Fin si 


FinAlgoritmo
