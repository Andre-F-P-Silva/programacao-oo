class Cofrinho {
  late double saldo;
  late int quantidadeDepositos;

  Cofrinho(double saldoInicial) {
    if (saldoInicial < 0) throw ArgumentError('Saldo inicial deve ser >= 0.');
    saldo = saldoInicial;
    quantidadeDepositos = 0;
  }

  void depositar(double valor) {
    if (valor <= 0) throw ArgumentError('Valor do depósito deve ser maior que 0.');
    saldo += valor;
    quantidadeDepositos++;
    print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado. Total de depósitos: $quantidadeDepositos');
  }

  void quebrar() {
    print('💥 Cofrinho quebrado!');
    print('Total acumulado: R\$ ${saldo.toStringAsFixed(2)} em $quantidadeDepositos depósito(s).');
    saldo = 0;
    quantidadeDepositos = 0;
  }

  void exibirSaldo() => print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
}
