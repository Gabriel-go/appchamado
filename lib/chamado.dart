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
      appBar: AppBar(
        title: Text('Chamados'),
        backgroundColor: corPrincipal,
      ),
      body: Column(
        children: [Text("data")],
      ),
    );
  }
}
