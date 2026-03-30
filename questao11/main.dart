import 'triangulo.dart';

void main() {
  Triangulo t1 = Triangulo(3, 4, 5, '*');
  Triangulo t2 = Triangulo(5, 5, 5, '#');

  print('--- Triângulo 1 ---');
  t1.exibirResumo();
  t1.desenharEsquerda();
  print('');
  t1.desenharCentralizado();

  print('\n--- Triângulo 2 ---');
  t2.exibirResumo();
  t2.desenharEsquerda();
  print('');
  t2.desenharCentralizado();
}
