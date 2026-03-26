import 'aluno.dart';

void main() {
  List<Aluno> alunos = [
    Aluno('Ana', 8.0, 9.0),
    Aluno('Bruno', 4.0, 5.0),
    Aluno('Carla', 6.0, 7.0),
    Aluno('Diego', 3.0, 2.0),
    Aluno('Andre', 10.0, 10.0),
    Aluno('Fábio', 5.5, 6.5),
    Aluno('Gabi', 7.0, 8.0),
    Aluno('Hugo', 0.0, 1.0),
    Aluno('Renan', 6.0, 6.0),
    Aluno('Rayane', 9.5, 8.5),
  ];

  for (var aluno in alunos) {
    aluno.exibirBoletim();
  }
}
