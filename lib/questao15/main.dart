import 'cofrinho.dart';

void main() {
  Cofrinho cofre = Cofrinho(0);

  cofre.depositar(10.0);
  cofre.depositar(20.0);
  cofre.depositar(50.0);
  cofre.depositar(100.0);
  cofre.exibirSaldo();
  cofre.quebrar();
  cofre.exibirSaldo();
}
