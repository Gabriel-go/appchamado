import 'package:flutter/material.dart';
import 'Cores.dart';

class Chamado extends StatefulWidget {
  @override
  _ChamadoState createState() => _ChamadoState();
}

class _ChamadoState extends State<Chamado> {
  @override
  Widget build(BuildContext context) {
    String src =
        "https://www.iconpacks.net/icons/2/free-7-24-customer-support-icon-1719-thumb.png";
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Chamados'),
        backgroundColor: corPrincipal,
      ),
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    labelText: 'Pesquisa',
                    labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                  validator: (String? value) {},
                  onSaved: (vl) {},
                  onChanged: (vl) {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          for (int i = 0; i < 100; i++)
            ListTile(
              leading: Image(
                image: NetworkImage(src),
              ),
              title: Text('ID: ${i} - Descrição do chamado'),
              subtitle:
                  Text('Uma breve descrição do que esta acontecendo la dentro'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
        ],
      ),
    );
  }
}
