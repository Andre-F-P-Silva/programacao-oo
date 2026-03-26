import 'contador.dart';

void main() {
  Contador c1 = Contador(0);
  c1.incrementar();
  c1.incrementar();
  c1.incrementar();
  c1.decrementar();
  c1.exibirValor();

  Contador c2 = Contador(10);
  c2.decrementar();
  c2.decrementar();
  c2.zerar();
  c2.decrementar(); 
  c2.exibirValor();
}
