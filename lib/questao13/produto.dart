class Produto {
  late int codigo;
  late String nome;
  late double precoUnitario;
  late int quantidade;

  Produto(int codigo, String nome, double precoUnitario, int quantidade) {
    if (codigo <= 0) throw ArgumentError('Código deve ser maior que 0.');
    if (nome.isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    if (precoUnitario <= 0) throw ArgumentError('Preço deve ser maior que 0.');
    if (quantidade <= 0) throw ArgumentError('Quantidade deve ser maior que 0.');

    this.codigo = codigo;
    this.nome = nome;
    this.precoUnitario = precoUnitario;
    this.quantidade = quantidade;
  }

  double calcularDesconto() {
    double total = precoUnitario * quantidade;

    if (quantidade >= 20) return total * 0.15;
    if (quantidade >= 10) return total * 0.10;
    if (quantidade >= 5) return total * 0.05;

    return 0;
  }

  double calcularTotal() {
    double total = precoUnitario * quantidade;
    return total - calcularDesconto();
  }

  void exibirResumo() {
    print('  Código: $codigo');
    print('  Nome: $nome');
    print('  Preço unitário: R\$ ${precoUnitario.toStringAsFixed(2)}');
    print('  Quantidade: $quantidade');
    print('  Desconto: R\$ ${calcularDesconto().toStringAsFixed(2)}');
    print('  Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
  }
}
