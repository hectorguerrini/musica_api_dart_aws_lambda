import '../model/musica.dart';

class MusicaRepository {
  final List<Musica> musicas = [];

  List<Musica> getAll() {
    return musicas;
  }

  bool avaliar(String nome, int avaliacao) {
    if (avaliacao > 0 && avaliacao < 6) {
      return true;
    }
    return false;
  }

  bool setMusica(Musica value) {
    if (!musicas.any(
        (element) => element.nome.toLowerCase() == value.nome.toLowerCase())) {
      musicas.add(value);
      return true;
    }
    return false;
  }
}
