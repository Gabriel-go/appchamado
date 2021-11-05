import 'package:appchamado/chamado.dart';
import 'package:appchamado/login.dart';
import 'package:appchamado/person.dart';
import 'package:appchamado/personEdit.dart';
import 'package:appchamado/principal.dart';
import 'package:flutter/material.dart';
import 'Cores.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chamados',
      theme: ThemeData(
          primaryColor: corPrincipal,
          secondaryHeaderColor: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => principal(),
        '/person': (context) => Person(),
        '/personEdit': (context) => PersonEdit(),
        '/chamado': (context) => Chamado(),
      },
      initialRoute: '/login',
    );
  }
}
