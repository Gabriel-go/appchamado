import 'package:flutter/material.dart';
import 'Cores.dart';

class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: barraSuperior(),
        drawer: menuLateral(ctx: context),
        body: corpo(ctx: context),
      ),
    );
  }
}

AppBar barraSuperior() {
  return AppBar(
    title: const Text('Meu Chamados'),
    backgroundColor: corPrincipal,
    bottom: const TabBar(
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.cloud_outlined),
        ),
        Tab(
          icon: Icon(Icons.beach_access_sharp),
        ),
        Tab(
          icon: Icon(Icons.brightness_5_sharp),
        ),
      ],
    ),
  );
}

Widget corpo({ctx}) {
  List<Map> listPerson = [
    {"id": 0, "Nome": "Gabriel", "Profissao": "ENG"},
    {"id": 1, "Nome": "Mateuszim", "Profissao": "Negin  Delas"},
    {"id": 2, "Nome": "Joaqui", "Profissao": "Pedreiro"},
    {"id": 3, "Nome": "Outro Nome", "Profissao": "Avulso"},
    {"id": 4, "Nome": "Eduardo", "Profissao": "Padeiro"},
    {"id": 5, "Nome": "Caio", "Profissao": "Padeiro"},
    {"id": 6, "Nome": "Henrique", "Profissao": "Padeiro"},
    {"id": 7, "Nome": "Antonio", "Profissao": "Padeiro"},
    {"id": 8, "Nome": "Jose carlos", "Profissao": "Padeiro"},
  ];

  return Container(
    //color: cor,
    child: TabBarView(
      children: <Widget>[
        Center(
          child: Text("Tela 1"),
        ),
        Center(
          child: Text("Tela 2"),
        ),
        Center(
          child: Text("Tela 3"),
        ),
      ],
    ),
  );
}

Widget menuLateral({ctx}) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: corPrincipal,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.person,
                size: 97,
                color: Colors.white70,
              ),
              Text(
                "Egn. Gabriel Alexandre",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "GabrielAlexandre@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Chamados'),
          onTap: () => {Navigator.pushNamed(ctx, '/chamado')},
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Clientes'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Perfil'),
          onTap: () => {Navigator.pushNamed(ctx, '/person')},
        ),
        ListTile(
          leading: Icon(Icons.bar_chart),
          title: Text('Relatorios'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configura????o'),
        ),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: Colors.red,
          ),
          title: Text('Sair'),
        ),
      ],
    ),
  );
}
