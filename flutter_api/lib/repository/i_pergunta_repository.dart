import 'package:flutter_api/models/perguntas.dart';

abstract class IPerguntaRepository {
  
    Future<List<Perguntas>> findPerguntasAll();

}
