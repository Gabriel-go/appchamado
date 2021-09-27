import 'package:appchamado/person.dart';
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
        '/home': (context) => principal(),
        '/person': (context) => Person(),
      },
      initialRoute: '/home',
    );
  }
}
