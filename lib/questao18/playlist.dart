import 'musica.dart';

class Playlist {
  late String nome;
  late Musica musica1;
  late Musica musica2;
  late Musica musica3;

  Playlist(String nome, Musica musica1, Musica musica2, Musica musica3) {
    if (nome.isEmpty) throw ArgumentError('Nome da playlist não pode ser vazio.');
    this.nome = nome;
    this.musica1 = musica1;
    this.musica2 = musica2;
    this.musica3 = musica3;
  }

  int calcularDuracaoTotal() =>
      musica1.duracaoSegundos + musica2.duracaoSegundos + musica3.duracaoSegundos;

  void exibirPlaylist() {
    print('🎧 Playlist: $nome');
    musica1.exibir();
    musica2.exibir();
    musica3.exibir();
    int total = calcularDuracaoTotal();
    print('  Duração total: ${total ~/ 60}min ${total % 60}s');
  }

  void tocarPlaylist() {
    print('▶️  Tocando playlist: $nome');
    musica1.exibir();
    musica2.exibir();
    musica3.exibir();
  }
}
