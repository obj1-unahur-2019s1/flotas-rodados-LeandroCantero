class Corsa {
	var property color
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
}

class Kwid{
	const property color = "Azul"
	var property tanqueAdicional = false
	var peso = 1200
	method capacidad(){return if (not tanqueAdicional) {4} else {3}}
	method velocidadMaxima(){return if (not tanqueAdicional) {120} else {110}}
	method peso(){return if (tanqueAdicional) {peso+150} else {peso}}
}

object trafic  {
	const property color = "Blanco"
	var peso = 4000
	method capacidad(){return interior.capacidad()}
	method velocidadMaxima(){return motor.velocidadMaxima()}
	method peso(){return peso+interior.peso()+motor.peso()}
}

object interior {
	var property interiorComodo = false
	method capacidad(){return if (interiorComodo) {5} else {12}} 
	method peso(){return if (interiorComodo) {700} else {1000}}
}

object motor {
	var property motorPulenta = false
	method velocidadMaxima(){return if (motorPulenta) {130} else {80}}
	method peso(){return if (motorPulenta) {800} else {500}}
}

