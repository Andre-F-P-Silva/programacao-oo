import 'pedido.dart';
import 'produto.dart';

void main() {
  Pedido ped1 = Pedido(1, Produto(1, 'Camiseta Athletico Paranaense', 350.0, 1), 1);
  Pedido ped2 = Pedido(2, Produto(2, 'Uniforme Completo Athletico Paranaense', 850.0, 5), 5);

  ped1.exibirPedido();
  ped2.exibirPedido();
}
