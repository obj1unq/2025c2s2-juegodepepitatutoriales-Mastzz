object pepita {
	var energia = 500
	var property position = game.center()
	var property image = "pepita.png"

	method position(){
		if (energia <= 0){
			image = "pepita-gris.png"
			return position
		}
		return position
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}
	// Movements
	method volarArriba(){
		if (energia >= 0){
			position = position.up(1)
			self.volar(1)
		}
	}
	method volarAbajo(){
		if (energia >= 0){
			position = position.down(1)
			self.volar(1)
		}
	}
	method volarDerecha() {
		if (energia >= 0){
			position = position.right(1)
			self.volar(1)
		}
	}
	method volarIzquierda() {
		if (energia >= 0){
			position = position.left(1)
			self.volar(1)
		}
	}

	method gris() {
	  image = "pepita-gris.png"
	}
}

