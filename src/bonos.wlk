import pepe.*
import bonos.*

// bono por resultados por porcentaje
object bonoPorcentaje {

	method monto(empleado) {
		return empleado.sueldoNeto() * 10 / 100
	}

}

// bono por resultados de monto fijo
object bonoMontoFijo {

	method monto(empleado) {
		return 800
	}

}

// agregar bonos por presentismo  
object bonoPresentismoNormal {

	method monto(empleado) {
		if (empleado.cantidadDeFaltas() == 0) {
			return 2000
		} else if (empleado.cantidadDeFaltas() == 1) {
			return 1000
		} else {
			return 0
		}
	}

}

// agregar bonos ajuste y demagogico
object bonoAjuste {

	method monto(empleado) {
		if (empleado.cantidadDeFaltas() == 0) {
			return 100
		} else {
			return 0
		}
	}

}

object bonoDemagogico {

	method monto(empleado) {
		if (empleado.sueldoNeto() < 18000) {
			return 500
		} else {
			return 300
		}
	}

}

/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {

	method monto(empleado) {
		return 0
	}

}

