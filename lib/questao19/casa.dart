import 'comodo.dart';

class Casa {
  late String proprietario;
  late Comodo comodo1;
  late Comodo comodo2;
  late Comodo comodo3;

  Casa(String proprietario, Comodo comodo1, Comodo comodo2, Comodo comodo3) {
    if (proprietario.isEmpty) throw ArgumentError('Proprietário não pode ser vazio.');
    this.proprietario = proprietario;
    this.comodo1 = comodo1;
    this.comodo2 = comodo2;
    this.comodo3 = comodo3;
  }

  double calcularAreaTotal() => comodo1.tamanho + comodo2.tamanho + comodo3.tamanho;

  void exibirCasa() {
    print('🏠 Casa de $proprietario');
    comodo1.exibir();
    comodo2.exibir();
    comodo3.exibir();
    print('  Área total: ${calcularAreaTotal()}m²');
  }
}
