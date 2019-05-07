class Dependencia{
	var flota = []
	var property empleados = 0
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.add(rodado)}
	method pesoTotalFlota(){return flota.sum({f => f.peso()})}	
}
