import 'package:flutter/material.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({Key? key}) : super(key: key);

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: const Text(
                  'Entrou em serviço',
                  style: TextStyle(color: Colors.black26, fontSize: 50),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.white,
                child: Image.asset(
                  'assets/images/Trabalhando.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ],
    );
    throw UnimplementedError();
  }
}

class ExitScreen extends StatefulWidget {
  const ExitScreen({Key? key}) : super(key: key);

  @override
  State<ExitScreen> createState() => _ExitScreenState();
}

class _ExitScreenState extends State<ExitScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: const Text(
                  'Saiu do serviço',
                  style: TextStyle(color: Colors.black26, fontSize: 50),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.white,
                child: Image.asset(
                  'assets/images/sair.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ],
    );
    throw UnimplementedError();
  }
}


