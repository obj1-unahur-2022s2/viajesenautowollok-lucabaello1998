import clientes.*

object roxana{
	
	method precioViaje(cliente,kilometro) = cliente.valorKilometro()*kilometro
}

object gabriela{
	
	method precioViaje(cliente,kilometro) =(cliente.valorKilometro()*kilometro)*1.20
}

object mariela{
	method precioViaje(cliente,kilometro){
		return if(kilometro <= 2){
			 50
		}else{
			cliente.valorKilometro()*kilometro
		}
	}
}

object juana{
	method precioViaje(cliente,kilometro){
		if(kilometro <= 8){
			return 100
		}else{
			return 200
		}
	}
}

object lucia {
	var reemplazaA
	
	method reemplazarA(remisera){
		reemplazaA = remisera
	} 
	
	method reemplazarA() = reemplazaA
	
	method precioViaje(cliente,kilometro){
		return reemplazaA.precioViaje(cliente,kilometro)
	}
}

object melina {
	var cliente
	
	method cliente() = cliente
	method precioViaje(nuevoCliente,kilometro){
		cliente = nuevoCliente
		return(nuevoCliente.valorKilometro()-3)*kilometro
	}
}