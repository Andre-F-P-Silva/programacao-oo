class Pessoa {
  late String nome;
  late int idade;

  Pessoa(String nome, int idade) {
    if (nome.isEmpty) {
      throw ArgumentError('Nome não pode ser vazio.');
    }
    if (idade < 0) {
      throw ArgumentError('Idade deve ser maior ou igual a 0.');
    }
    this.nome = nome;
    this.idade = idade;
  }

  void exibirDados() {
    print('--- Dados da Pessoa ---');
    print('Nome: $nome');
    print('Idade: $idade anos');
    print('-----------------------');
  }
}
