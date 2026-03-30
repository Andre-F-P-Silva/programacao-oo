import 'pedido.dart';
import 'produto.dart';

void main() {
  Pedido ped1 = Pedido(1, Produto(1, 'Notebook', 3500.0, 1), 1);
  Pedido ped2 = Pedido(2, Produto(2, 'Mouse', 80.0, 5), 5);

  ped1.exibirPedido();
  ped2.exibirPedido();
}
