Algoritmo matriz_caracol
	Escribir "Ingrese un valor impar para generar la dimension de la matriz cuadrada"
	Repetir
		Leer dm
		Si dm es par Entonces
			Escribir "el valor que ingreso es par , ingrese un valor impar"
		Fin Si
	Hasta Que dm%2<>0	
	Dimension m[dm,dm]
	cont<-1
	in<-1
	fi<-dm
	Mientras cont<=dm*dm Hacer
		Para rec<-in Hasta fi Con Paso 1 Hacer
			m[in,rec]<-cont
			cont<-cont+1
		Fin Para
		Para rec<-in+1 Hasta fi Con Paso 1 Hacer
			m[rec,fi]<-cont
			cont<-cont+1
		Fin Para
		Para rec<-fi-1 Hasta in Con Paso -1 Hacer
			m[fi,rec]<-cont
			cont<-cont+1
		Fin Para
		Para rec<-fi-1 Hasta in+1 Con Paso -1 Hacer
			m[rec,in]<-cont
			cont<-cont+1
		Fin Para
		in<-in+1
		fi<-fi-1
	Fin Mientras
	Para t<-1 Hasta dm Con Paso 1 Hacer
		Para e<-1 Hasta dm Con Paso 1 Hacer
			Escribir Sin Saltar m[t,e] "   "
		Fin Para
		Escribir ""
		Escribir ""
	Fin Para
FinAlgoritmo
