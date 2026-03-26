import '../Questao08/endereco.dart';

class Pessoa {
  late String nome;
  late int idade;
  late String cpf;
  late Endereco endereco;

  Pessoa(String nome, int idade, String cpf, Endereco endereco) {
    if (nome.isEmpty) {
      throw ArgumentError('Nome não pode ser vazio.');
    }
    if (idade < 0) {
      throw ArgumentError('Idade deve ser >= 0.');
    }
    if (cpf.isEmpty) {
      throw ArgumentError('CPF não pode ser vazio.');
    }

    this.nome = nome;
    this.idade = idade;
    this.cpf = cpf;
    this.endereco = endereco;
  }

  void exibirPessoa() {
    print('=== Pessoa ===');
    print('Nome: $nome');
    print('Idade: $idade');
    print('CPF: $cpf');
    endereco.exibirEndereco();
    print('==============');
  }
}
