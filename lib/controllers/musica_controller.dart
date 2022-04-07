import '/model/http.dart';
import '/model/musica.dart';
import '/repositories/musica_repository.dart';

class MusicaController {
  final _repository = MusicaRepository();

  HttpResponse getAll(HttpRequest req) {
    var res = _repository.getAll();
    return HttpResponse(res.map((e) => e.toJson()), 200);
  }

  HttpResponse avaliar(HttpRequest req) {
    return HttpResponse('not implemented', 503);
  }

  HttpResponse postMusica(HttpRequest req) {
    if (req.body['nome'] != null && req.body['nome'] != '') {
      var res = _repository.setMusica(Musica(req.body['nome']));
      if (res) {
        return HttpResponse(null, 200);
      }
      return HttpResponse('nome already exists', 400);
    }
    return HttpResponse('nome is required', 400);
  }
}
