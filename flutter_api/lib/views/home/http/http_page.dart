import 'package:flutter/material.dart';
import 'package:flutter_api/models/perguntas.dart';
import 'package:flutter_api/views/home/http/repository/htttp_controller_dart.dart';
import 'package:flutter_api/views/home/http/repository/pergunta_httpRepository.dart';
import 'package:get/get.dart';

class HttpPage extends StatelessWidget {
  const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PerguntaHttpRepository repo = PerguntaHttpRepository();

    return Scaffold(
        appBar: AppBar(
          title: Text('HTTP'),
        ),
        body: FutureBuilder(
          future: repo.findPerguntasAll(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return ListView.builder(

     
                itemCount:20, itemBuilder: (context, index) {
                  
                   Perguntas perg = snapshot.data[index];
          
                    return Text(perg.descricao);

                });
          },
        ));
  }
}
