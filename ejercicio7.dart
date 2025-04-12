mixin vuela {
  void volar() {
    print("Va Volando");
  }
}

mixin navega {
  void navegar() {
    print("Va Navegando");
  }
}

mixin tierra {
  void acelerar() {
    print("Va Acelerando");
  }
}

class Avion with vuela, tierra {
  void info(){
    print("Soy un avion que...");
  }
}

class Barco with navega{
  void info(){
    print("Soy un barco que");
  }
}

class Moto with tierra{
  void info(){
    print("Soy una moto que...");
  }
}

class Auto with tierra{
  void info(){
    print("Soy un auto que...");
  }
}

void main() {
  var latam = Avion();
  var titanic = Barco();
  var ferrari = Auto();
  var hdavidson = Moto();
  
  

  latam.info();
  latam.volar();
  latam.acelerar();

  print("----------------------------");
  
  titanic.info();
  titanic.navegar();
  
  print("----------------------------");
  
  ferrari.info();
  ferrari.acelerar();
  
  print("----------------------------");
  
  hdavidson.info();
  hdavidson.acelerar(); 


 
}
