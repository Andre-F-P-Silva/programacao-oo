import 'pokemon.dart';
import 'treinador.dart';

void main() {
  Treinador ash = Treinador(
    'Ash',
    Pokemon(25, 'Pikachu', 'Elétrico', 50, 100),
    Pokemon(6, 'Charizard', 'Fogo/Voador', 80, 150),
    Pokemon(1, 'Bulbasaur', 'Planta/Veneno', 45, 120),
  );
  ash.exibirTime();
}
