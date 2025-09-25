import wollok.game.*
import pepita.*
object nido {
  const property position = game.at(8, 8)

  method image() {return "nido.png"}

  method meToco(alguien) {
    alguien.ganar()
  }
}

object silvestre {
  const presa = pepita

  method image() {return "silvestre.png"}
  
  method position(){ return game.at(self.x(), 0)}

  method x(){return 3.max(presa.position().x())}

  method meToco(alguien){ alguien.perder()}
}



