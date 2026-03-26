class Aluno {
  late String nome;
  late double nota1;
  late double nota2;

  Aluno(String nome, double nota1, double nota2) {
    if (nota1 < 0 || nota1 > 10) throw ArgumentError('Nota 1 deve estar entre 0 e 10.');
    if (nota2 < 0 || nota2 > 10) throw ArgumentError('Nota 2 deve estar entre 0 e 10.');
    this.nome = nome;
    this.nota1 = nota1;
    this.nota2 = nota2;
  }

  double calcularMedia() => (nota1 + nota2) / 2;

  String verificarAprovacao() => calcularMedia() >= 6 ? 'Aprovado ✅' : 'Reprovado ❌';

  void exibirBoletim() {
    print('--- Boletim ---');
    print('Nome: $nome');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Média: ${calcularMedia().toStringAsFixed(1)}');
    print('Situação: ${verificarAprovacao()}');
    print('---------------');
  }
}
