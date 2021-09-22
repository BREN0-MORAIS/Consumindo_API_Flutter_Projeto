import 'dart:convert';
import 'package:flutter_api/models/perguntas.dart';
import 'package:flutter_api/repository/i_pergunta_repository.dart';
import 'package:http/http.dart' as http;

class PerguntaHttpRepository implements IPerguntaRepository {
  

  int counter = 0;

  @override
  Future<List<Perguntas>> findPerguntasAll() async 
  {
try{
    // Uri url = Uri.parse('https://192.168.0.21:812/api/v1/pergunta/obtertodos');
    final response = await http.get(Uri.https('192.168.0.21:812' ,'api/v1/pergunta/obtertodos'));


    final  responseMap = jsonDecode(response.body);
       List<Perguntas>  resposta=  responseMap.map<List<Perguntas>>((resp)=> Perguntas.fromMap(resp)).toList();
    return resposta;
}catch(e){

  print(e.toString());
  return List.empty();
}

  }
}
