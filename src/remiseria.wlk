import remiseras.*
import clientes.*

object oficina {
	var remisera_1
	var remisera_2
	
	method asignarRemiseras(remisera1,remisera2){
		remisera_1 = remisera1
		remisera_2 = remisera2
	}
	
	method cambiarPrimerRemiseraPor(remisera){
		remisera_1 = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera){
		remisera_2 = remisera
	}
	
	method intercambiarRemiseras(){
		var cambio = remisera_1
		remisera_1 = remisera_2
		remisera_2 = cambio
	}
	
	method remiseraElegidaParaViaje(cliente,kms){
		var diferenciaDePrecio= (remisera_2.precioViaje(cliente,kms)-remisera_1.precioViaje(cliente,kms).abs())
	return	if(diferenciaDePrecio <= 30 and remisera_2.precioViaje(cliente,kms)< remisera_1.precioViaje(cliente,kms) ){
			remisera_2.precioViaje(cliente,kms)
		}else{
			remisera_1.precioViaje(cliente,kms)
		}
	
	}
	
}
