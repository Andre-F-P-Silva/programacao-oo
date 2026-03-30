class Circulo {
  static const double pi = 3.14;
  late double raio;
  late String cor;

  Circulo(double raio, String cor) {
    if (raio <= 0) throw ArgumentError('Raio deve ser maior que 0.');
    if (cor.isEmpty) throw ArgumentError('Cor não pode ser vazia.');
    this.raio = raio;
    this.cor = cor;
  }

  double calcularArea() => pi * raio * raio;
  double calcularPerimetro() => 2 * pi * raio;

  void exibirResumo() {
    print('--- Círculo ---');
    print('Raio: $raio');
    print('Cor: $cor');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
    print('---------------');
  }
}
