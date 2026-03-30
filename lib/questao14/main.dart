import 'carro.dart';
import 'motor.dart';

void main() {
  Carro c1 = Carro('Golf', Motor(158, 'Flex'));
  Carro c2 = Carro('Byd Seal', Motor(177, 'Híbrido'));

  c1.exibirCarro();
  c2.exibirCarro();
}
