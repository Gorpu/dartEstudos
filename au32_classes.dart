void main() {
  Map<String, dynamic> registrar = {};
  var carro = Carros();
  carro.marca = "Fiat";
  carro.modelo = "Uno Mille";
  carro.km = 1422250.00;
  carro.chassi = 16556413253431354;
  carro.motor = 1.0;
  carro.ano = 2000;
  carro.registrar();
}

class Carros {
  String modelo = "";
  String marca = "";
  int chassi = 0;
  double km = 0.0;
  double motor = 0.0;
  int ano = 0;

  Map<String, dynamic> registrar() {
    var dictModelCarro = {
      "Modelo": this.modelo,
      "Marca": this.marca,
      "Chassi": this.chassi,
      "Km": this.km,
      "Motor": this.motor,
      "Ano": this.ano,
    };
    print("*" * 20);
    dictModelCarro.forEach((key, values) {
      print("$key: $values");
    });
    print("*" * 20);
    return dictModelCarro;
  }
}
