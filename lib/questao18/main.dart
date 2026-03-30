import 'musica.dart';
import 'playlist.dart';

void main() {
  Musica m1 = Musica('Ignora', 'Felipe e Rodrigo', 354);
  Musica m2 = Musica('Deixa Eu', 'Murilo Huff', 391);
  Musica m3 = Musica('Bebe, Beija e Trai', 'Mayke e Rodrigo, Panda', 482);

  Playlist pl = Playlist('Sertanejo', m1, m2, m3);
  pl.exibirPlaylist();
  print('');
  pl.tocarPlaylist();
}
