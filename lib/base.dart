class Base {
  List<Map> usuario = [
    {
      "id": "1",
      "nome": "Gabriel",
      "senha": "123",
      "email": "Gabriel@Gabriel.com"
    },
    {
      "id": "2",
      "nome": "Matheus Ribeiro",
      "senha": "456",
      "email": "matheus@matheus.com"
    },
    {
      "id": "3",
      "nome": "Jose Firmino",
      "senha": "111",
      "email": "Jose@Jose.com"
    },
    {
      "id": "4",
      "nome": "Henrique",
      "senha": "222",
      "email": "Henrique@Henrique.com"
    },
  ];

  bool validaCadastro(nome, senha) {
    for (int i = 0; i < usuario.length; i++) {
      if ((usuario[i]["nome"] == nome) && (usuario[i]["senha"] == senha)) {
        return true;
      }
    }
    return false;
  }
}
