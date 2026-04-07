import 'pokemon.dart';
import 'treinador.dart';

void main() {
  Treinador ash = Treinador(
    'André',
    Pokemon(01, 'Pikachu', 'Elétrico', 90, 180),
    Pokemon(02, 'Charizard', 'Fogo/Voador', 80, 150),
    Pokemon(03, 'Bulbasaur', 'Planta/Veneno', 65, 120),
  );
  ash.exibirTime();
}
