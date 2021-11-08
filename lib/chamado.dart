import 'package:flutter/material.dart';
import 'Cores.dart';

class Chamado extends StatefulWidget {
  @override
  _ChamadoState createState() => _ChamadoState();
}

class _ChamadoState extends State<Chamado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corPrincipal,
      appBar: appBarChamado(),
      body: listaChamados(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: corPrincipal,
      ),
    );
  }

  AppBar appBarChamado() {
    return AppBar(
      title: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: corSecundaria,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          decoration: InputDecoration.collapsed(
            hintText: "Buscar chamados",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          style: TextStyle(
            color: Colors.white,
          ),
          onSubmitted: (String value) async {
            //pegando o valor para pesquisar
            print(value.toString());
          },
        ),
      ),
      backgroundColor: corPrincipal,
      actions: [
        IconButton(
          onPressed: () {
            addFiltro();
          },
          icon: Icon(
            Icons.menu,
          ),
        ),
      ],
    );
  }

  addFiltro() async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Filtro Chamado'),
          content: Text("Descrição"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Container listaChamados() {
    String src =
        "https://www.iconpacks.net/icons/2/free-7-24-customer-support-icon-1719-thumb.png";
    return Container(
      decoration: BoxDecoration(
        color: corFundo,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      ),
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          for (int i = 0; i < 10; i++)
            ListTile(
              leading: Image(
                image: NetworkImage(src),
              ),
              title: Text('ID: ${i} - Descriçãos do chamado'),
              subtitle:
                  Text('Uma breve descrição do que esta acontecendo la dentro'),
              trailing: IconButton(
                icon: Icon(Icons.list_sharp),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
        ],
      ),
    );
  }
}
