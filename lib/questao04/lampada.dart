class Lampada {
  late bool ligada;
  late int quantidadeLigacoes;
  late bool queimada;

  Lampada() {
    ligada = false;
    quantidadeLigacoes = 0;
    queimada = false;
  }

  void ligar() {
    if (queimada) {
      print('A lâmpada está queimada e não pode ser ligada.');
      return;
    }
    if (ligada) {
      print('A lâmpada já está ligada.');
      return;
    }
    quantidadeLigacoes++;
    ligada = true;
    if (quantidadeLigacoes >= 5) {
      queimada = true;
      ligada = false;
      print('A lâmpada queimou após $quantidadeLigacoes ligações!');
    } else {
      print('Lâmpada ligada. (ligação nº $quantidadeLigacoes)');
    }
  }

  void desligar() {
    if (!ligada) {
      print('A lâmpada já está desligada.');
      return;
    }
    ligada = false;
    print('Lâmpada desligada.');
  }

  void exibirEstado() {
    if (queimada) {
      print('Estado: QUEIMADA 💀');
    } else if (ligada) {
      print('Estado: LIGADA 💡');
    } else {
      print('Estado: DESLIGADA 🌑');
    }
  }
}
