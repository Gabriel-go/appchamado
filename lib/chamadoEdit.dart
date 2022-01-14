import 'package:flutter/material.dart';
import 'Cores.dart';
import 'mascaras.dart';

class ChamadoEdit extends StatefulWidget {
  @override
  _ChamadoEditdoState createState() => _ChamadoEditdoState();
}

class _ChamadoEditdoState extends State<ChamadoEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarChamado(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/chamadoEdit');
        },
        child: const Icon(Icons.add),
        backgroundColor: corSucess,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: corFundo,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
        ),
        child: ListView(
          children: [
            cabecalhoChamado(),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerRight,
              height: 40,
              child: TextButton(
                child: Text(
                  "Gravar",
                  style: TextStyle(
                    color: corSucess,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            for (int i = 0; i < 1; i++)
              ListTile(
                leading: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: corPrincipal,
                ),
                title: Text('ID: ${i} - Descriçãos do chamado'),
                subtitle: Text(
                    'Uma breve descrição do que esta acontecendo la dentro'),
                trailing: IconButton(
                  icon: Icon(Icons.list_sharp),
                  color: corPrincipal,
                  onPressed: () {},
                ),
              ),
          ],
        ),
      ),
      backgroundColor: corPrincipal,
    );
  }

  AppBar appBarChamado() {
    return AppBar(
      backgroundColor: corPrincipal,
      title: Text("Chamado"),
    );
  }

  Widget cabecalhoChamado() {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Titulo',
              ),
              validator: (String? value) {},
              onSaved: (vl) {},
              onChanged: (vl) {},
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Solicitante',
              ),
              validator: (String? value) {},
              onSaved: (vl) {},
              onChanged: (vl) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    inputFormatters: [mascaraData],
                    decoration: const InputDecoration(
                      labelText: 'Dt Abertura',
                    ),
                    validator: (String? value) {},
                    onSaved: (vl) {},
                    onChanged: (vl) {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 150,
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    inputFormatters: [mascaraHora],
                    decoration: const InputDecoration(
                      labelText: 'Hr Abertura',
                    ),
                    validator: (String? value) {},
                    onSaved: (vl) {},
                    onChanged: (vl) {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


/*
TextFormField(
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [mascaraData],
                  decoration: const InputDecoration(
                    labelText: 'Dt Abertura',
                  ),
                  validator: (String? value) {},
                  onSaved: (vl) {},
                  onChanged: (vl) {},
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [mascaraHora],
                  decoration: const InputDecoration(
                    labelText: 'Hr Abertura',
                  ),
                  validator: (String? value) {},
                  onSaved: (vl) {},
                  onChanged: (vl) {},
                ),



 */
