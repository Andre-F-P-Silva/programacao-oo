import 'dart:math';

class Triangulo {
  late double _lado1;
  late double _lado2;
  late double _lado3;
  late String caractere;

  Triangulo(double lado1, double lado2, double lado3, String caractere) {
    if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
      throw ArgumentError('Lados devem ser maiores que 0.');
    }
    if (!_valido(lado1, lado2, lado3)) {
      throw ArgumentError('Lados não formam triângulo válido.');
    }
    if (caractere.isEmpty || caractere.length != 1) {
      throw ArgumentError('Caractere inválido.');
    }

    _lado1 = lado1;
    _lado2 = lado2;
    _lado3 = lado3;
    this.caractere = caractere;
  }

  bool _valido(double a, double b, double c) {
    return a + b > c && a + c > b && b + c > a;
  }

  double get lado1 => _lado1;
  double get lado2 => _lado2;
  double get lado3 => _lado3;

  set lado1(double v) {
    if (v <= 0 || !_valido(v, _lado2, _lado3)) {
      throw ArgumentError('Valor inválido para lado1.');
    }
    _lado1 = v;
  }

  set lado2(double v) {
    if (v <= 0 || !_valido(_lado1, v, _lado3)) {
      throw ArgumentError('Valor inválido para lado2.');
    }
    _lado2 = v;
  }

  set lado3(double v) {
    if (v <= 0 || !_valido(_lado1, _lado2, v)) {
      throw ArgumentError('Valor inválido para lado3.');
    }
    _lado3 = v;
  }

  double calcularPerimetro() {
    return _lado1 + _lado2 + _lado3;
  }

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
  }

  void desenharEsquerda() {
    int linhas = _lado1.toInt();

    for (int i = 1; i <= linhas; i++) {
      String linha = '';
      for (int j = 0; j < i; j++) {
        linha += caractere;
      }
      print(linha);
    }
  }

  void desenharCentralizado() {
    int linhas = _lado1.toInt();

    for (int i = 1; i <= linhas; i++) {
      String linha = '';

      for (int j = 0; j < linhas - i; j++) {
        linha += ' ';
      }

      for (int j = 0; j < (2 * i - 1); j++) {
        linha += caractere;
      }

      print(linha);
    }
  }

  void exibirResumo() {
    print('--- Triângulo ---');
    print('Lados: $_lado1, $_lado2, $_lado3');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
    print('-----------------');
  }
}
