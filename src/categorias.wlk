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
	const netoBase = 16000
	var muchasVentas = false

	method activarAumentoPorMuchasVentas() {
		muchasVentas = true
	}

	method desactivarAumentoPorMuchasVentas() {
		muchasVentas = false
	}

	method neto() {
		if (muchasVentas) {
			return netoBase * 1.25
		} else {
			return netoBase
		}
	}

}

object medioTiempo {
	var categoriaBase

	method categoriaBase(categoria) {
		categoriaBase = categoria
	}
	
	method neto() {
		return categoriaBase.neto() / 2
	}

}

