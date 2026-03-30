class Pokemon {
  late int numero;
  late String nome;
  late String tipo;
  late int nivel;
  late int hp;

  Pokemon(int numero, String nome, String tipo, int nivel, int hp) {
    if (nome.isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    if (tipo.isEmpty) throw ArgumentError('Tipo não pode ser vazio.');
    if (nivel < 1 || nivel > 100) throw ArgumentError('Nível deve estar entre 1 e 100.');
    if (hp <= 0) throw ArgumentError('HP deve ser maior que 0.');
    this.numero = numero;
    this.nome = nome;
    this.tipo = tipo;
    this.nivel = nivel;
    this.hp = hp;
  }

  void exibir() {
    print('  #$numero $nome | Tipo: $tipo | Nível: $nivel | HP: $hp');
  }
}
