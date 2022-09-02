object ludmila {
	const valorKilometro = 18
	
	method valorKilometro() = valorKilometro
	
}

object anaMaria {
	var valorKilometro = 30
	var estabilidadEconomica = true
	
	method valorKilometro() = valorKilometro
	
	method estabilidadEconomia() = estabilidadEconomica
	
	method estabilidadEconomia(booleano){
		if(booleano){
			estabilidadEconomica = true
			valorKilometro = 30
		}else{
			estabilidadEconomica = false
			valorKilometro = 25
		}	
	}
}

object teresa {
	var valorKilometro = 22
	
	method valorKilometro() = valorKilometro
	
	method valorKilometro(nuevoValor){
		valorKilometro = nuevoValor
	}
}
