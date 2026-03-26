import 'lampada.dart';

void main() {
  Lampada lamp = Lampada();

  for (int i = 0; i < 7; i++) {
    lamp.ligar();
    lamp.exibirEstado();
    lamp.desligar();
  }
}
