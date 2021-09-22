import 'package:flutter_api/repository/i_pergunta_repository.dart';
import 'package:flutter_api/views/home/http/repository/htttp_controller_dart.dart';
import 'package:flutter_api/views/home/http/repository/pergunta_httpRepository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IPerguntaRepository>(PerguntaHttpRepository());
    Get.put<HtttpController>(Get.find());

  }
}
