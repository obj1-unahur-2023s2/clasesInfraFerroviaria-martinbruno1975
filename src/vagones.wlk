class VagonDePasajero {
	const property ancho
	const property largo
	const property tieneBanios
	var property estaOrdenado = true 
	
	method cantidadDePasajeros(){
		const pasajeros = if (ancho <= 3){8 * largo} else {10 * largo}
		return if (not estaOrdenado){0.max(pasajeros - 15)} else {pasajeros} 
	}
	method pesoMaximo() = 2000 + 80 * self.cantidadDePasajeros() + self.cargaMaxima()
	method cargaMaxima() =  if (tieneBanios) {300} else {800}
	method esPopular() = self.cantidadDePasajeros() > 50
	method hacerMantenimiento(){
		estaOrdenado = true
	}
}

class VagonDeCarga {
	const property cargaMaximaIdeal
	var property maderasSueltas
	
	method cantidadDePasajeros() = 0
	method pesoMaximo() = 1500 + self.cargaMaxima()
	method cargaMaxima() = 0.max(cargaMaximaIdeal - 400 * maderasSueltas)
	method tieneBanio() = false
	method esPopular() = self.cantidadDePasajeros() > 50
	method hacerMantenimiento(){
		maderasSueltas = 0.max(maderasSueltas -= 2)
	}
}

class VagonDormitorio {
	const property cantidadCompartimientos
	var property camasPorCompartimientos
	
	method cantidadDePasajeros() = cantidadCompartimientos * camasPorCompartimientos
	method pesoMaximo() = 4000 + (80 * self.cantidadDePasajeros()) + self.cargaMaxima() 
	method cargaMaxima() = 1200
	method tieneBanio() = true
	method esPopular() = self.cantidadDePasajeros() > 50
	method hacerMantenimiento(){}
}