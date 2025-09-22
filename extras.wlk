import pepita.*

object silvestre {
  var property position = game.at(3, 0)
  method image() {
    return "silvestre.png"
  }
  method position() {
    //return game.at(pepita.position().x(), 0)
     return if (pepita.position().x() < 3) game.at(3, 0) else game.at(pepita.position().x(), 0)
  }
}
object nido {
  var property position = game.at(4, 9)
  method image() {
    return "nido.png"
  }
}


