import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	/*
	//método para obtener el bono x presentismo
	method bonoPresentismo() {
	  return bonoPresentismo
	}
	
	//método para obtener bono x resultado
	method bonoResultado() {
	  return bonoResultado
	}

	//método para obtener categoria
	method categoria() {
	  return categoria
	}
	*/

	//método para poder cambiar la categoria
	method categoria(_categoria) {
	  categoria = _categoria
	}

	//método para poder cambiar el bono por presentismo
	method cambiarBonoPorPresentismo(_bonoPresentismo) {
	  bonoPresentismo = _bonoPresentismo
	}

	//método para poder cambiar el bono por resultados.
	method cambiarBonoPorResultado(_bonoResultado) {
	  bonoResultado = _bonoResultado
	}

	//método para obtener cantidad de faltas
	method cantidadDeFaltas() { 
		return cantidadDeFaltas 
	}

	//método para poder cambiar la cantidad de faltas de Pepe. 
	method cambiarCantidadDeFaltas(_cantidadDeFaltas) {
	  cantidadDeFaltas = _cantidadDeFaltas
	}
	
	method sueldoNeto() { //consulta
		return categoria.neto() 
	}

	method sueldo() { //consulta
	//calculo sueldo = neto + bono x resultados + bono x presentismo.
		return self.sueldoNeto() + bonoResultado.monto(self) + bonoPresentismo.monto(self)
		// bono x resultados puede ser porcentaje, monto fijo, o nulo.
		// bono x presentismo puede ser normal, ajuste, demagógico o nulo
	}
}

/*
preguntas para hacerse: 
- es una consulta o accion?. 
- es algo que tengo que calcular o recordar?
*/
