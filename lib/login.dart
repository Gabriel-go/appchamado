import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Cores.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller/userController.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String senha = '';
  String srcLogin =
      'https://www.iconsdb.com/icons/preview/purple/login-xxl.png';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final userController = UserController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 128,
              width: 128,
              child: Image.network(srcLogin),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Informe o Email',
                        labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
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
                      onChanged: (vl) {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        hintText: 'Informe uma senha',
                        labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
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
                      height: 40,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text("Esqueci a senha",
                            style: TextStyle(
                              color: Colors.black87,
                            )),
                        onPressed: () => {
                          /// rotina logar
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: corPrincipal,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          )),
                      child: TextButton(
                        child: Text(
                          "Logar",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate())
                            _formKey.currentState!.save();

                          if (userController.logar(email, senha))
                            Navigator.pushNamed(context, '/home');
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          )),
                      child: TextButton(
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              userController.logar(email, senha);
                            }
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.red.shade700,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          )),
                      child: TextButton(
                          child: Text(
                            "Sair",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

/*
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

 */
