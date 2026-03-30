class Musica {
  late String titulo;
  late String artista;
  late int duracaoSegundos;

  Musica(String titulo, String artista, int duracaoSegundos) {
    if (titulo.isEmpty) throw ArgumentError('Título não pode ser vazio.');
    if (artista.isEmpty) throw ArgumentError('Artista não pode ser vazio.');
    if (duracaoSegundos <= 0) throw ArgumentError('Duração deve ser maior que 0.');
    this.titulo = titulo;
    this.artista = artista;
    this.duracaoSegundos = duracaoSegundos;
  }

  String get duracaoFormatada {
    int min = duracaoSegundos ~/ 60;
    int seg = duracaoSegundos % 60;
    return '${min.toString().padLeft(2, '0')}:${seg.toString().padLeft(2, '0')}';
  }

  void exibir() => print('  🎵 $titulo - $artista ($duracaoFormatada)');
}
