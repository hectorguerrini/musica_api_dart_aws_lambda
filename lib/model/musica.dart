class Musica {
  late int id;
  String nome;
  int avaliacao = 0;
  Musica(this.nome) {
    this.id = new DateTime.now().millisecondsSinceEpoch;
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'nome': nome, 'avaliacao': avaliacao};
  }
}
