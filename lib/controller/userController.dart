import 'package:mobx/mobx.dart';
part 'userController.g.dart';

class UserController = UserControllerBase with _$UserController;

abstract class UserControllerBase with Store {
  @observable
  int id = 0;
  String login = "";
  String senha = "";
  String logado = "";

  var jsonUser = [
    {"id": 1, "nome": "gabriel", "email": "gabriel@gmail.com", "senha": "123"},
    {"id": 2, "nome": "jose", "email": "jose@gmail.com", "senha": "123"},
    {"id": 3, "nome": "marcos", "email": "marcos@gmail.com", "senha": "123"}
  ];

  @action
  bool logar(String pLogin, String pSenha) {
    return _buscaLogin(pLogin, pSenha);
  }

  bool _buscaLogin(String pLogin, String pSenha) {
    for (int i = 0; i < jsonUser.length; i++) {
      if (pLogin == jsonUser[i]['email'].toString() &&
          pSenha == jsonUser[i]['senha'].toString()) {
        login = pLogin;
        senha = pSenha;
        return true;
      }
    }
    return false;
  }

  @action
  logOff() {
    login = "";
    senha = "";
    logado = "";
  }
}
