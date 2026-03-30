class Personagem {
  late String nome;
  late int vida;
  late int ataque;

  Personagem(String nome, int vida, int ataque) {
    if (nome.isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    if (vida <= 0) throw ArgumentError('Vida deve ser maior que 0.');
    if (ataque <= 0) throw ArgumentError('Ataque deve ser maior que 0.');
    this.nome = nome;
    this.vida = vida;
    this.ataque = ataque;
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print('$nome está morto e não pode atacar!');
      return;
    }
    inimigo.vida -= ataque;
    if (inimigo.vida < 0) inimigo.vida = 0;
    print('$nome atacou ${inimigo.nome} causando $ataque de dano! Vida restante de ${inimigo.nome}: ${inimigo.vida}');
  }

  void exibirStatus() {
    print('[$nome] Vida: $vida | Ataque: $ataque | ${estaVivo() ? "Vivo ✅" : "Morto 💀"}');
  }

  bool estaVivo() => vida > 0;
}
