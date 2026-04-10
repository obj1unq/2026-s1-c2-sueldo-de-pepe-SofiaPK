// bono por resultados por porcentaje
object bonoPorcentaje {
	method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}

// bono por resultados de monto fijo
object bonoMontoFijo {
	method monto(empleado) {
	  return 800
	}
}

// agregar bonos por presentismo  
object bonoPresentismoNormal {
	const bonoPorAsistenciaCompleta = 2000 //cuando tiene asistencia completa
	const bonoPorAsistenciaConUnaFalta = 1000 //cuando tiene una falta

	method monto(empleado) {
	  if ( empleado.cantidadDeFaltas() == 0){
		return bonoPorAsistenciaCompleta
	  } 
	  else if (empleado.cantidadDeFaltas() == 1) {
		return bonoPorAsistenciaConUnaFalta
	  } 
	  else {
		return empleado.bonoNulo() // cuando tiene mas de una falta
	  }
	}
}

// agregar bonos ajuste 
object bonoAjuste{
	const bonoPorAsistenciaCompleta = 100 // cuando el empleado no faltó nunca

	method monto(empleado) {
		if (empleado.cantidadDeFaltas() == 0) {
			return bonoPorAsistenciaCompleta 
		} else {
			return 0
		}
	}

}

// agregar bonos demagogico
object bonoDemagogico{
	const bonoPorNetoMenor = 500 // si el neto es menor a 18000
	const bonoPorNetoSuperior = 300 // si el neto es superior a 18000
	//Para este bono no importa cuántas veces faltó el empleado.
	
	method monto(empleado) {
	  if (empleado.sueldoNeto() < 18000) {
		return bonoPorNetoMenor
	  } else {
		return bonoPorNetoSuperior
	  }
	}
}

/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) { return 0 } 
}

