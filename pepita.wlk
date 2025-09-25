import wollok.game.*
import direcciones.*
import extras.*


object pepita {
	var property position = game.at(0,1)
	var energia = 500
	const joules = 9
	const depredador = silvestre
	const hogar = nido

	method image(){
		return "pepita-" + self.estado() + ".png"
	}
	method estado(){
		return if (!self.puedeMover()){"gris"}
				else if (self.enHogar()){"grande"}
				else {"base"}
	}
	method energiaNecesaria(kms){return joules * kms}

	method volar(kms) {
		energia -= self.energiaNecesaria(kms)
	}

	method comer(comida) {
		energia += comida.energiaQueOtorga()
	}

	method energia() {
		return energia
	}
	method puedeMover(){
		return energia >= self.energiaNecesaria(1) && not self.esAtrapada()
	}
	method esAtrapada(){
		return self.estaSobre(depredador)
	}
	method estaSobre(alguien){
		return position == alguien.position()
	}
	method enHogar(){ return self.estaSobre(hogar)}
	
	method meChoqueCon(alguien){
		alguien.meToco(alguien)
	}
	method mover(direccion) {
	  if(self.puedeMover()){
		self.volar(1)
		position = direccion.siguiente(position)
	  }
	  else{
		self.perder()
	  }
	}
	
	method perder(){
		game.say(self, "Perdi!")
		game.schedule(2000, {game.stop()})
	}

	method ganar(){
		game.say(self, "Gane!")
		game.schedule(2000, {game.stop()})
	}
	method caeGravedad() {
	  position = game.at(position.x(),position.y()-1)
	}

}

