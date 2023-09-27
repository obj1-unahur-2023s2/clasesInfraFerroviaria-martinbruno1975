import vagones.*

class Formacion {
	const vagones = new List()
	
	method cantidadMaximaPasajeros(){
		return vagones.sum({v => v.cantidadDePasajeros()})
	}
	
	method cantidadVagonesPopulares(){
		return vagones.count({v => v.esPopular()})
	}
	method esFormacionCarguera(){
		return vagones.all({v => v.cargaMaxima() >= 1000})
	}
	
	method dispersionPeso(){
		return self.pesoMaximo() - self.pesoMinimo()
	}
	
	method pesoMinimo() {
		return vagones.min({v => v.pesoMaximo()}).pesoMaximo()
	}
	
	method pesoMaximo() {
		return vagones.max({v => v.pesoMaximo()}).pesoMaximo()
	}
	
	method cantidadDeBanios(){
		//return vagones.filter({v => v.tieneBanio()}).size()
		return vagones.count({v => v.tieneBanio()})
	}
	
	method hacerMantenimiento(){
		vagones.forEach({v => v.hacerMantenimiento()})
	}
	
	method estaEquilibrada() {
		const pasajeros=self.vag
	}
}