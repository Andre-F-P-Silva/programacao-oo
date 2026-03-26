import 'quadrado.dart';

void main() {
  Quadrado q1 = Quadrado(3, '*');
  Quadrado q2 = Quadrado(5, '#');
  Quadrado q3 = Quadrado(3, '*');
  Quadrado q4 = Quadrado(4, '@');

  q1.exibirResumo();
  q1.desenhar();
  print('');

  q2.exibirResumo();
  q2.desenhar();
  print('');

  q3.exibirResumo();
  q3.desenhar();
  print('');

  q4.exibirResumo();
  q4.desenhar();
  print('');

  print('q1 é igual a q2? ${q1.ehIgual(q2)}');
  print('q1 é igual a q3? ${q1.ehIgual(q3)}');
  print('q1 é igual a q4? ${q1.ehIgual(q4)}');
}
