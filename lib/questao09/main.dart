import 'pessoa.dart';
import '../Questao08/endereco.dart';

void main() {
  Pessoa p1 = Pessoa(
    'Andre',
    25,
    '111.111.111-11',
    Endereco('Rua A', 1, 'Bairro A', 'Curitiba', 'PR', 80000000),
  );

  Pessoa p2 = Pessoa(
    'Rayane',
    30,
    '222.222.222-22',
    Endereco('Rua B', 2, 'Bairro B', 'Almirante Tamandare', 'PR', 1000000),
  );

  Pessoa p3 = Pessoa(
    'Marcia',
    22,
    '333.333.333-33',
    Endereco('Rua C', 3, 'Bairro C', 'Colombo', 'PR', 20000000),
  );

  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
}
