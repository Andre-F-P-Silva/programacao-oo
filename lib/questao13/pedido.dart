import 'produto.dart';

class Pedido {
  late int numero;
  late Produto produto;
  late int quantidade;

  Pedido(int numero, Produto produto, int quantidade) {
    if (numero <= 0) throw ArgumentError('Número deve ser maior que 0.');
    if (quantidade <= 0) throw ArgumentError('Quantidade deve ser maior que 0.');
    this.numero = numero;
    this.produto = produto;
    this.quantidade = quantidade;
  }

  double calcularTotal() => produto.precoUnitario * quantidade;

  void exibirPedido() {
    print('=== Pedido Nº $numero ===');
    produto.exibirResumo();
    print('  Quantidade: $quantidade');
    print('  Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
    print('========================');
  }
}
