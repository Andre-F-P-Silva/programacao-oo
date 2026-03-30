import 'comodo.dart';
import 'casa.dart';

void main() {
  Casa casa = Casa(
    'André Felipe',
    Comodo('Sala', 25.0),
    Comodo('Quarto', 15.0),
    Comodo('Cozinha', 10.0),
  );
  casa.exibirCasa();
}
