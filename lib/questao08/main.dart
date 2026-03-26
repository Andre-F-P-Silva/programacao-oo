import 'endereco.dart';

void main() {
  Endereco e1 = Endereco('Rua das Flores', 100, 'Centro', 'Curitiba', 'PR', 80010000);
  Endereco e2 = Endereco('Av. Visconde de Guarapuava', 1500, 'Centro', 'Curitiba', 'PR', 80250220);
  Endereco e3 = Endereco('Av. Sete de Setembro', 4698, 'Batel', 'Curitiba', 'PR', 80240000);

  e1.exibirEndereco();
  e2.exibirEndereco();
  e3.exibirEndereco();
}
