class Quadrado {
  late double lado;
  late String caractere;

  Quadrado(double lado, String caractere) {
    if (lado <= 0) {
      throw ArgumentError('Lado deve ser maior que 0.');
    }
    if (caractere.isEmpty || caractere.length != 1) {
      throw ArgumentError('Caractere deve ter apenas 1 símbolo.');
    }

    this.lado = lado;
    this.caractere = caractere;
  }

  double calcularArea() {
    return lado * lado;
  }

  double calcularPerimetro() {
    return 4 * lado;
  }

  void desenhar() {
    int tamanho = lado.toInt();

    for (int i = 0; i < tamanho; i++) {
      String linha = '';
      for (int j = 0; j < tamanho; j++) {
        linha += caractere;
      }
      print(linha);
    }
  }

  void exibirResumo() {
    print('Lado: $lado');
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
  }

  bool ehIgual(Quadrado outroQuadrado) {
    return lado == outroQuadrado.lado &&
        caractere == outroQuadrado.caractere;
  }
}
