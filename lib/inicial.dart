import 'package:flutter/material.dart';
import 'package:meu_primeiro_projeto/Telas.dart';
import 'package:meu_primeiro_projeto/task_dao.dart';
import 'package:intl/intl.dart';

class inicial extends StatelessWidget {
  const inicial({super.key});

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
        body: ListView(children: [
          Entrada('Registre seu ponto clicando no botão'),
          Saida('Registre a sua saída clicando no botão'),
          Ver('Ver pontos Registrados!'),
        ]),
        //floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}


DateTime now = DateTime.now();

class Entrada extends StatefulWidget {
  final String nome;

  const Entrada(this.nome, {Key? key}) : super(key: key);

  @override
  State<Entrada> createState() => _EntradaState();
}

class _EntradaState extends State<Entrada> {

  String tipo = 'Entrada';
  String data = DateFormat('dd-MM-yyyy – kk:mm').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              color: Colors.cyan,
              height: 80,
              width: 400,
              child: Text(
                widget.nome,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                TaskDao().save(tipo, data);
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EnterScreen()));
                });
                print('Ponto registrado');
              },
              child: Text('Registrar!', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
class Saida extends StatefulWidget {
  final String nome;

  const Saida(this.nome, {Key? key}) : super(key: key);

  @override
  State<Saida> createState() => _SaidaState();
}

class _SaidaState extends State<Saida> {

  String tipo = 'Saída';
  String data = DateFormat('dd-MM-yyyy – kk:mm').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              color: Colors.cyan,
              height: 80,
              width: 400,
              child: Text(
                widget.nome,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                TaskDao().save(tipo, data);
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExitScreen()));
                });
                print('Ponto registrado');
              },
              child: Text('Registrar!', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}

class Ver extends StatefulWidget {
  final String nome;

  const Ver(this.nome, {Key? key}) : super(key: key);

  @override
  State<Ver> createState() => _ver();
}

class _ver extends State<Ver> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              color: Colors.cyan,
              height: 80,
              width: 400,
              child: Text(
                widget.nome,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                TaskDao().findAll();
              },
              child: Text('Ver Registros', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
