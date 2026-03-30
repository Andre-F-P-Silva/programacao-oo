class Semaforo {
  late String corAtual;
  late int tempoRestante;

  Semaforo(String corInicial) {
    if (!['vermelho', 'verde', 'amarelo'].contains(corInicial)) {
      throw ArgumentError('Cor inválida.');
    }
    corAtual = corInicial;
    tempoRestante = _tempoParaCor(corInicial);
  }

  int _tempoParaCor(String cor) {
    switch (cor) {
      case 'vermelho': return 5;
      case 'verde': return 4;
      case 'amarelo': return 2;
      default: return 0;
    }
  }

  String _emoji(String cor) {
    switch (cor) {
      case 'vermelho': return '🔴';
      case 'verde': return '🟢';
      case 'amarelo': return '🟡';
      default: return '';
    }
  }

  void trocarCor() {
    switch (corAtual) {
      case 'vermelho': corAtual = 'verde'; break;
      case 'verde': corAtual = 'amarelo'; break;
      case 'amarelo': corAtual = 'vermelho'; break;
    }
    tempoRestante = _tempoParaCor(corAtual);
    print('🔄 Cor trocada para $corAtual ${_emoji(corAtual)}');
  }

  void reduzirTempo() {
    tempoRestante--;
    if (tempoRestante <= 0) trocarCor();
  }

  void exibirEstado() {
    print('Semáforo: ${_emoji(corAtual)} $corAtual | Tempo: $tempoRestante');
  }
}
