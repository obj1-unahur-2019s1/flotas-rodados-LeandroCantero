import rodados.*

class Viaje {
	var property distancia
	var property tiempoMaximo
	var property pasajeros
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida() {return distancia/tiempoMaximo}
	method velocidadMax(auto) {return auto.velocidadMaxima()+10 >= self.velocidadRequerida()}
	method hayCapacidad(auto) {return auto.capacidad() >= pasajeros}
	method colorEsCompatible(auto) {return not self.coloresIncompatibles().contains(auto.color())}
	method satisfacePedido(auto) {return self.velocidadMax(auto) and self.hayCapacidad(auto) and self.colorEsCompatible(auto)}
	
}
