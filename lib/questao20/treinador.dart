import 'pokemon.dart';

class Treinador {
  late String nome;
  late Pokemon pokemon1;
  late Pokemon pokemon2;
  late Pokemon pokemon3;

  Treinador(String nome, Pokemon pokemon1, Pokemon pokemon2, Pokemon pokemon3) {
    if (nome.isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    this.nome = nome;
    this.pokemon1 = pokemon1;
    this.pokemon2 = pokemon2;
    this.pokemon3 = pokemon3;
  }

  int calcularPoderTotal() => pokemon1.nivel + pokemon2.nivel + pokemon3.nivel;

  Pokemon pokemonMaisForte() {
    Pokemon mais = pokemon1;
    if (pokemon2.nivel > mais.nivel) mais = pokemon2;
    if (pokemon3.nivel > mais.nivel) mais = pokemon3;
    return mais;
  }

  void exibirTime() {
    print('🎮 Treinador: $nome');
    pokemon1.exibir();
    pokemon2.exibir();
    pokemon3.exibir();
    print('  Poder total: ${calcularPoderTotal()}');
    print('  Pokémon mais forte: ${pokemonMaisForte().nome} (Nível ${pokemonMaisForte().nivel})');
  }
}
