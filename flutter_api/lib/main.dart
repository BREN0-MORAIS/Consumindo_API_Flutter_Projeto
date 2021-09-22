import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api/models/perguntas.dart';
import 'package:flutter_api/views/home/home_page.dart';
import 'package:flutter_api/views/home/http/http_page.dart';
import 'package:flutter_api/views/home/http/repository/http_bindings.dart';
import 'package:flutter_api/views/home/http/repository/pergunta_httpRepository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    PerguntaHttpRepository repo = PerguntaHttpRepository();


Future<List<Perguntas>> pegarPerguntas() async{
  var uri = Uri.parse('http://192.168.0.21:811/api/v1/pergunta/obtertodos');
  var response = await http.get(uri);

  if(response.statusCode == 200)
  {
          var responsemap =  jsonDecode(utf8.decode(response.bodyBytes));
          List<Perguntas>  resposta=  responsemap.map<Perguntas>((resp)=> Perguntas.fromMap(resp)).toList();
          return resposta;
  }else{
    throw Exception('Erro ao carregar dados for server');
  }

  return List.empty();
}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP'),
        ),
        body: FutureBuilder<List>(
          future: pegarPerguntas(),
          builder: (context, snapshot){
              if(snapshot.hasError){

                return Text('Erro ao carregar informações');
              }

              if(snapshot.hasData){
                return ListView.builder(itemCount: snapshot.data!.length,itemBuilder: (context,index){
                    final Perguntas pergunta = snapshot.data![index];
                    return Text(pergunta.descricao);
                },);
              }

              return CircularProgressIndicator();
          },
        ),));
  }
}


