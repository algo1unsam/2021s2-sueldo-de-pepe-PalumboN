import pepe.*
import bonos.*

object gerente {

	method neto() {
		return 15000
	}

}

object cadete {

	method neto() {
		return 20000
	}

}

object vendedor {

	var muchasVentas = false

	method activarAumentoPorMuchasVentas() {
		muchasVentas = true
	}

	method desactivarAumentoPorMuchasVentas() {
		muchasVentas = false
	}

	method neto() {
		if (muchasVentas) {
			return 16000 * 1.25
		} else {
			return 16000
		}
	}

}

object medioTiempo {


	method categoriaBase(categoria) {
		return categoria.neto() / 2
	}

}

