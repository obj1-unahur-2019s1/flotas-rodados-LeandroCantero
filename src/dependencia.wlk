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
	method autosFlota(){return flota.filter{f => f.capacidad() > 0}
	
	method agregarARegristo(pedido){registro.add(pedido)}
	method quitarDeRegistro(pedido){registro.remove(pedido)}
	method totalPasajeros(){return registro.sum{p => p.pasajeros()}}
	//cuáles de los pedidos que tiene registrados no puede ser satisfecho por ninguno de los autos afectados a la dependencia.
	method cualNoPedeSatisfacer(){return not registro.filter{p => p.puedeSatisfacer()}}
}
