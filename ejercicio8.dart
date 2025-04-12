mixin hechicero {
  void lanzahechizo() {
    print("Lanza un hechizo");
  }
}

mixin atacante{
  void ataca() {
    print("Ataca con su arma poderosa");
  }
}

mixin curador {
  void cura() {
    print("Cura a un compañero");
  }
}

// Se usa clase abstracta porque sirve como base comun sin permitir instancias directas
abstract class personaje {
  void descripcion();
}


class Mago extends personaje with hechicero{
  @override
  void descripcion(){
    print("Soy hechicero");
  }
}

class Guerrero extends personaje with atacante{
  @override
  void descripcion(){
    print("Soy un guerrero");
  }
}

class Paladin extends personaje with atacante, curador{
  @override
  void descripcion(){
    print("Soy un paladin");
  }
}


void main() {

  var mago = Mago();
  var guerrero = Guerrero();
  var paladin = Paladin();

  mago.descripcion();
  mago.lanzahechizo();

  print("------------------------------");

  guerrero.descripcion();
  guerrero.ataca();

  print("------------------------------");

  paladin.descripcion();
  paladin.ataca();
  paladin.cura();
}
