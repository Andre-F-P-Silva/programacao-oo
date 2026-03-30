class Comodo {
  late String nome;
  late double tamanho;

  Comodo(String nome, double tamanho) {
    if (nome.isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    if (tamanho <= 0) throw ArgumentError('Tamanho deve ser maior que 0.');
    this.nome = nome;
    this.tamanho = tamanho;
  }

  void exibir() => print('  🚪 $nome: ${tamanho}m²');
}
