import 'package:flutter/material.dart';
import 'Cores.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller/userController.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Chamados"),
        backgroundColor: corPrincipal,
      ),
      body: Center(
        //padding: EdgeInsets.all(20),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _imageIcon(),
            _camposLogin(context),
          ],
        ),
      ),
    );
  }

  Container _imageIcon() {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.only(top: 100),
      child: Icon(
        Icons.person_pin_sharp,
        size: 150,
        color: corPrincipal,
      ),
    );
  }

  Container _camposLogin(ctx) {
    final userController = UserController();
    String senha = "";
    String email = "";
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Form(
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
                    //print('Texto $vl');
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            if (userController.logar(email, senha))
                              Navigator.pushNamed(ctx, '/home');
                          }
                        },
                        icon: Icon(Icons.login),
                        iconSize: 50,
                        color: Colors.green,
                      ),
                      IconButton(
                        onPressed: () {
                          //sair
                        },
                        icon: Icon(Icons.close),
                        iconSize: 50,
                        color: Colors.red,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
