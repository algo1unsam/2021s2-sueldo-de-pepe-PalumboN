import categorias.*
import bonos.*

object pepe {

	var categoria = gerente // cadete
	var bonoPresentismo = bonoNulo // Normal, Ajuste, Demagogico
	var bonoResultado = bonoNulo // Porcentaje, fijo
	var cantidadDeFaltas = 0
	var medioTiempoV = false

	method cantidadDeFaltas() {
		return cantidadDeFaltas
	} // getter de las faltas

	method setCantidadDeFaltas(cantidad) {
		cantidadDeFaltas = cantidad
	} // setter de las faltas SEPARADO 

	method setCategoria(categoriaNueva) { // setter categoria
		categoria = categoriaNueva
	}

	method setBonoPresentismo(cual) { // setter bonoPresentismo 
		bonoPresentismo = cual
	}

	method bonoPresentismo() {
		return bonoPresentismo.monto(self)
	} // getter bonoPresentismo

	method setBonoResultado(cual) {
		bonoResultado = cual
	} // setter bonoResultado

	method bonoResultado() {
		return bonoResultado.monto(self)
	} // getter bonoResultado 

	method setMedioTiempoTrue() {
		medioTiempoV = true
	}

	method setMedioTiempoFalse() {
		medioTiempoV = false
	}

	method sueldoNeto() {
		if (medioTiempoV) {
			return medioTiempo.categoriaBase(categoria)
		} else {
			return categoria.neto()
		}
	}

	method sueldo() {
		return self.sueldoNeto() + self.bonoResultado() + self.bonoPresentismo()
	}

/* notar que todos los bonos entienden el mensaje monto(empleado)
 * en este caso ¿quién es el empleado? PEPE porque self y estoy dentro de pepe
 */
}

object sofia {

	var categoria = gerente // cadete
	var bonoResultado = bonoNulo // Porcentaje, fijo
	var medioTiempoV = false

	method setCategoria(categoriaNueva) { // setter categoria
		categoria = categoriaNueva
	}

	method sueldoNeto() {
		if (medioTiempoV) {
			return medioTiempo.categoriaBase(categoria) * 1.3
		} else {
			return categoria.neto() * 1.3
		}
	}

	method setBonoResultado(cual) {
		bonoResultado = cual
	} // setter bonoResultado

	method bonoResultado() {
		return bonoResultado.monto(self)
	} // getter bonoResultado 

	method sueldo() {
		return self.sueldoNeto() + bonoResultado.monto(self)
	}

	method setMedioTiempoTrue() {
		medioTiempoV = true
	}

	method setMedioTiempoFalse() {
		medioTiempoV = false
	}

}

object roque {

	var bonoResultado = bonoNulo // Porcentaje, fijo

	method sueldoNeto() {
		return 28000
	}

	method sueldo() {
		return self.sueldoNeto() + bonoResultado.monto(self) + 9000
	}

	method setBonoResultado(cual) {
		bonoResultado = cual
	} // setter bonoResultado

	method bonoResultado() {
		return bonoResultado.monto(self)
	} // getter bonoResultado 

}

object ernesto {

	var companiero = pepe
	var bonoPresentismo = bonoNulo
	var cantidadDeFaltas = 0

	method setCompaniero(quien) {
		companiero = quien
	}

	method setBonoPresentismo(cual) { // setter bonoPresentismo 
		bonoPresentismo = cual
	}

	method bonoPresentismo() {
		return bonoPresentismo.monto(self)
	} // getter bonoPresentismo

	method cantidadDeFaltas() {
		return cantidadDeFaltas
	} // getter de las faltas

	method sueldoNeto() {
		return companiero.sueldoNeto()
	}

	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self)
	}

}

