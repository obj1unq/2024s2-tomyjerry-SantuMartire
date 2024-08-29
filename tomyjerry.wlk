object tom {
	
	//Completar! Pueden aparecer variables y métodos nuevos!
	var energia = 50
	//var velocidad = 10 Como una depende de la otra,hay que calcularla (En velocidad maxima)

	method comer(raton) {
		energia = energia + 12 + raton.peso()
	}
	
	method correr(distancia){
		energia = energia - (distancia / 2)
	}
	
	method velocidadMaxima()  {
		return 5 + energia/10
	}

	// Parte 2

	method puedeComer(distancia){
		return (energia - (distancia / 2) >= 0)
	}

	method energiaQueAportaria(raton) {
		return (12 + raton.peso())
	}
	method quiereComer(raton, distancia){
		return self.puedeComer(distancia) and 
				(self.energiaQueAportaria(raton) > (distancia /2))
	}
	
}

object jerry {

	var edad = 2

	method cumplir(){
		edad = edad +1
	}
	method peso(){
		return edad * 20
	}
}

object nibbles {

	method peso(){
		return 35
	}
}


