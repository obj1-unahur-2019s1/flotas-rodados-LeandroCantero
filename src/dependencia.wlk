class Dependencia{
	var flota = []
	var property empleados = 0
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.add(rodado)}
	method pesoTotalFlota(){return flota.sum{f => f.peso()} }	
	method estaBienEquipada(){return flota.size() > 2 and flota.all{f => f.velocidadMaxima() > 99}}
	method capacidadTotalEnColor(color){return flota.filter{f => f.color(color)}.sum{f => f.capacidad()}}
	method colorDelRodadoMasRapido(){return flota.max{f => f.velocidadMaxima()}.color()}
	method capacidadFaltante(){return empleados - flota.sum{f => f.capacidad()}}
	
}
