import categorias.*
import bonos.*

/*
Definir a Sofía, otra persona de la que hay que calcular el sueldo. 
Sofía solamente tiene bono por resultados, o sea que su sueldo se calcula como neto + bono x resultados.
A su vez, su neto es un 30% superior a lo que indica su categoría. P.ej. si Sofía es cadete, 
su neto es 26000. Recordar que para aumentar un número un 30%, se lo multiplica por 1.3.
Atención: si Pepe, o cualquier otra persona que se agregue, es cadete, su neto es 20000. 
El incremento del 30% se aplica solamente a Sofía.
*/

object sofia {
    //sueldo de sofia se calcula como neto + bono x resultados.
    // bono x resultados puede ser porcentaje, monto fijo, o nulo.
    var bonoResultado = bonoMontoFijo  
    var categoria = cadete
    const porcentajeAumento = 1.3

    //método para poder cambiar la categoria
	method categoria(_categoria) {
	  categoria = _categoria
	}

    //método para poder cambiar el bono por resultados.
	method cambiarBonoPorResultado(_bonoResultado) {
	  bonoResultado = _bonoResultado
	}

    method sueldoNeto() {
		return categoria.neto() * porcentajeAumento
	}

    method sueldo() {
        return self.sueldoNeto() + bonoResultado.monto(self)
    } 
}