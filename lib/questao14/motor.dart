class Motor {
  late int potencia;
  late String tipo;

  Motor(int potencia, String tipo) {
    if (potencia <= 0) throw ArgumentError('Potência deve ser maior que 0.');
    if (tipo.isEmpty) throw ArgumentError('Tipo não pode ser vazio.');
    this.potencia = potencia;
    this.tipo = tipo;
  }

  void exibirMotor() {
    print('  Motor: $tipo - $potencia cv');
  }
}
