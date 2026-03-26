class Relogio {
  late int hora;
  late int minuto;
  late int segundo;

  Relogio(int hora, int minuto, int segundo) {
    if (hora < 0 || hora > 23) throw ArgumentError('Hora deve estar entre 0 e 23.');
    if (minuto < 0 || minuto > 59) throw ArgumentError('Minuto deve estar entre 0 e 59.');
    if (segundo < 0 || segundo > 59) throw ArgumentError('Segundo deve estar entre 0 e 59.');
    this.hora = hora;
    this.minuto = minuto;
    this.segundo = segundo;
  }

  void exibirHorario() {
    String h = hora.toString().padLeft(2, '0');
    String m = minuto.toString().padLeft(2, '0');
    String s = segundo.toString().padLeft(2, '0');
    print('Horário: $h:$m:$s');
  }
}
