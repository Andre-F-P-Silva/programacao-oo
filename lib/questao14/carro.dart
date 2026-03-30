import 'motor.dart';

class Carro {
  late String modelo;
  late Motor motor;

  Carro(String modelo, Motor motor) {
    if (modelo.isEmpty) throw ArgumentError('Modelo não pode ser vazio.');
    this.modelo = modelo;
    this.motor = motor;
  }

  void exibirCarro() {
    print('--- Carro ---');
    print('Modelo: $modelo');
    motor.exibirMotor();
    print('-------------');
  }
}
