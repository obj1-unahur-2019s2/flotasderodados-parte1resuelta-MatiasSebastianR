class Pedidos{
	
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadDePasajeros
	var property coloresImcompatibles= {}
	
	method velocidadRequerida() {
		return distanciaARecorrer/tiempoMaximo
	}
	
	method satisfaceElPedido(vehiculo) { return
		vehiculo.velocidadMaxima()+10 < self.velocidadRequerida() and
		vehiculo.capacidad() > cantidadDePasajeros and
		vehiculo.color() == not coloresImcompatibles
		
	}
	
	method acelerar() { tiempoMaximo -= 1 }
	
	method relajar() { tiempoMaximo += 1 }
	
}

//Agregar la capacidad de preguntar si un auto puede satisfacer un pedido, enviándole un mensaje al viaje con el auto como parámetro.
//Para que un auto pueda satisfacer un pedido se tienen que dar tres condiciones:
//
//    que la velocidad máxima del auto sea al menos 10 km/h mayor a la velocidad requerida del pedido;
//    que la capacidad del auto dé para la cantidad de pasajeros del viaje; y
//    que el auto no sea de un color incompatible para el viaje.
//Además, los objetos que representan pedidos deben entender estos mensajes: acelerar disminuye en uno el tiempo máximo (p.ej. lo hace pasar de 8 horas a 7),
// y relajar que lo aumenta en uno (p.ej. lo hace pasar de 8 horas a 9).