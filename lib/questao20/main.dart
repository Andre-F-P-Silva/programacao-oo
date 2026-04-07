import 'pokemon.dart';
import 'treinador.dart';

void main() {
  Treinador ash = Treinador(
    'André',
    Pokemon(01, 'Pikachu', 'Elétrico', 50, 100),
    Pokemon(02, 'Charizard', 'Fogo/Voador', 80, 150),
    Pokemon(03, 'Bulbasaur', 'Planta/Veneno', 45, 120),
  );
  ash.exibirTime();
}
