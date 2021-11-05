import 'package:flutter/material.dart';
import 'Cores.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuarios'),
        backgroundColor: corPrincipal,
      ),
      body: Column(
        children: [
          Container(
            child: _imagePessoa(),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: _nomePessoa(),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _botaoContato(corPrincipal, Icons.call, 'Telefone'),
                _botaoContato(corPrincipal, Icons.phone_android, 'Celular'),
                _botaoContato(corPrincipal, Icons.mail, 'Email'),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: _botaoEditar(context),
          ),
        ],
      ),
    );
  }

  Column _botaoContato(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Row _nomePessoa() {
    return Row(
      children: [
        Icon(
          Icons.person,
          color: corPrincipal,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gabriel Alexandre Ferreira Oliveira",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Egn de Software",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Image _imagePessoa() {
    return Image(
      image: NetworkImage(
          'https://www.dci.com.br/wp-content/uploads/2020/09/perfil-sem-foto-1024x655.jpg'),
    );
  }

  TextButton _botaoEditar(ctx) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: corPrincipal,
      ),
      onPressed: () {
        Navigator.pushNamed(ctx, '/personEdit');
      },
      child: const Text(
        'Editar Cadastro',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
