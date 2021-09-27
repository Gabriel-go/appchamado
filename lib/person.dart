import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double tamanhoTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Pessoas'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: tamanhoTela * 0.50,
                    height: alturaTela * 0.40,
                    color: Colors.blue,
                  ),
                  Container(
                    width: tamanhoTela * 0.50,
                    height: alturaTela * 0.40,
                    color: Colors.blue,
                  )
                ],
              ),
              Container(
                width: tamanhoTela,
                height: alturaTela * 0.40,
                color: Colors.brown,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: const Text(
                      'Voltar',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                    onPressed: () {
                      //{{  }}
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
