import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registrador de ponto eletrônico'),
          backgroundColor: Colors.indigoAccent,
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Entrada('Registre seu ponto clicando no botão'),
          Entrada('Registre a sua saída clicando no botão'),
        ]),
        //floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Entrada extends StatelessWidget {
  final String nome;

  const Entrada(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.cyan,
            height: 80,
            width: 400,
            child: Text(
              nome,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Ponto registrado');
            },
            child: Text('Registrar!'),
          ),
        ],
      ),
    );
  }
}
