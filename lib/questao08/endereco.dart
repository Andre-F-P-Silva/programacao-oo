class Endereco {
  late String rua;
  late int numero;
  late String bairro;
  late String cidade;
  late String estado;
  late int cep;

  Endereco(String rua, int numero, String bairro, String cidade, String estado, int cep) {
    if (rua.isEmpty) throw ArgumentError('Rua não pode ser vazia.');
    if (numero <= 0) throw ArgumentError('Número deve ser maior que 0.');
    if (bairro.isEmpty) throw ArgumentError('Bairro não pode ser vazio.');
    if (cidade.isEmpty) throw ArgumentError('Cidade não pode ser vazia.');
    if (estado.isEmpty) throw ArgumentError('Estado não pode ser vazio.');

    this.rua = rua;
    this.numero = numero;
    this.bairro = bairro;
    this.cidade = cidade;
    this.estado = estado;
    this.cep = cep;
  }

  String get cepFormatado {
    String c = cep.toString().padLeft(8, '0');
    return '${c.substring(0, 5)}-${c.substring(5)}';
  }

  void exibirEndereco() {
    print('--- Endereço ---');
    print('Rua: $rua, Nº $numero');
    print('Bairro: $bairro');
    print('Cidade: $cidade - $estado');
    print('CEP: $cepFormatado');
    print('----------------');
  }
}
