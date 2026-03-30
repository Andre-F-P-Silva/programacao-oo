import 'semaforo.dart';

void main() {
  Semaforo s = Semaforo('vermelho');

  for (int ciclo = 0; ciclo < 20; ciclo++) {
    s.exibirEstado();
    s.reduzirTempo();
  }
}
