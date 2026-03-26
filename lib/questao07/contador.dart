class Contador {
  late int valor;

  Contador(int valorInicial) {
    if (valorInicial < 0) {
      throw ArgumentError('Valor inicial deve ser >= 0.');
    }
    valor = valorInicial;
  }

  void incrementar() {
    valor++;
  }

  void decrementar() {
    if (valor > 0) {
      valor--;
    }
  }

  void zerar() {
    valor = 0;
  }

  void exibirValor() {
    print('Valor atual: $valor');
  }
}
