import rodados.*
import pedidos.*

class Dependencia{
	var flota = []
	var registro = []
	var property empleados = 0
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.add(rodado)}
	method pesoTotalFlota(){return flota.sum{f => f.peso()} }	
	method estaBienEquipada(){return flota.size() > 2 and flota.all{f => f.velocidadMaxima() > 99}}
	method capacidadTotalEnColor(color){return flota.filter{f => f.color(color)}.sum{f => f.capacidad()}}
	method colorDelRodadoMasRapido(){return flota.max{f => f.velocidadMaxima()}.color()}
	method capacidadFaltante(){return empleados - flota.sum{f => f.capacidad()}}
	method esGrande(){return flota.size() > 4 and empleados > 39}
	method autosFlota(){return flota.filter{f => f.capacidad() > 0}}
	
	method agregarARegistro(pedido){registro.add(pedido)}
	method quitarDeRegistro(pedido){registro.remove(pedido)}
	method totalPasajeros(){return registro.sum{p => p.pasajeros()}}
	method autosNoSatisfacenA(pedido){return not flota.all{a => pedido.puedeSatisfacer(a)}}
	method cualNoPuedeSatisfacer(){return registro.filter{p => self.autosNoSatisfacenA(p)}}
	method colorIncompatiblePedidos(color) {return registro.all{ p => p.coloresIncompatibles().contains(color)}}
	method relajarPedidos(){registro.forEach{p => p.relajar()}}
}
