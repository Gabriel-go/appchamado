import 'package:flutter/material.dart';
import 'Cores.dart';

class PersonEdit extends StatefulWidget {
  @override
  _PersonEditState createState() => _PersonEditState();
}

class _PersonEditState extends State<PersonEdit> {
  String nome = "";
  String senha = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Edição de Usuario'),
        backgroundColor: corPrincipal,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Informe o Email',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe um email valido';
                  }
                  return null;
                },
                onSaved: (vl) {
                  setState(() {
                    email = vl.toString();
                  });
                },
                onChanged: (vl) {
                  print('Texto $vl');
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Informe seu nome',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo nao pode ser vazio';
                  }
                  return null;
                },
                onSaved: (vl) {
                  setState(() {
                    nome = vl.toString();
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  hintText: 'Informe uma senha',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo nao pode ser vazio';
                  }
                  return null;
                },
                onSaved: (vl) {
                  setState(() {
                    senha = vl.toString();
                  });
                },
              ),
              Row(
                //mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
                      },
                      icon: Icon(Icons.check_circle),
                      iconSize: 50,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close_outlined),
                      iconSize: 50,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: IconButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Process data.
                                _formKey.currentState!.save();
                                print('$nome');
                              }
                            },
                            icon: Icon(Icons.check_circle),
                            iconSize: 50,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: IconButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Process data.
                                _formKey.currentState!.save();
                                print('$nome');
                              }
                            },
                            icon: Icon(Icons.check_circle),
                            iconSize: 50,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  )
*/