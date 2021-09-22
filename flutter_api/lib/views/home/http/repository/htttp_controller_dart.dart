import 'package:flutter_api/repository/i_pergunta_repository.dart';
import 'package:get/get.dart';

class HtttpController extends GetxController  with StateMixin {
final IPerguntaRepository _httpRepository;

  HtttpController(this._httpRepository);


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

     findPergunta();
  }

  Future<void> findPergunta() async {

    change([],status: RxStatus.loading());
   try{
    final dados  = await _httpRepository.findPerguntasAll();

     change(dados,status: RxStatus.success());


   }catch(e){
     change([],status: RxStatus.error('Erro ao buscar usuarios'));
     print(e);
   }

  }
}
