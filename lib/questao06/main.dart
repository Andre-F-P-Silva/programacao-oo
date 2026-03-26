import 'produto.dart';

void main() {
  Produto p = Produto(1, 'Bobojaco Athletico Paranaense', 490.0, 3);
  p.exibirResumo();

  p.codigo = 2;
  p.nome = 'Camiseta Athletico Paranaense';
  p.precoUnitario = 380.0;
  p.quantidade = 12;
  p.exibirResumo();
}
