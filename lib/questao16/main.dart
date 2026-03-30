import 'personagem.dart';

void main() {
  Personagem heroi = Personagem('Homem de Ferro', 100, 20);
  Personagem vilao = Personagem('Thanos', 80, 15);

  print('=== INÍCIO DO COMBATE ===');
  heroi.exibirStatus();
  vilao.exibirStatus();
  print('');

  while (heroi.estaVivo() && vilao.estaVivo()) {
    heroi.atacar(vilao);
    if (vilao.estaVivo()) vilao.atacar(heroi);
  }

  print('\n=== FIM DO COMBATE ===');
  heroi.exibirStatus();
  vilao.exibirStatus();
}
