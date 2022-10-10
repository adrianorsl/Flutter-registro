import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_primeiro_projeto/inicial.dart';
import 'package:meu_primeiro_projeto/main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode;
    Future.delayed(Duration(seconds: 4)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> inicial()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 300,
            height: 500,
            child: Image.asset('assets/images/splash.jpg'),
          ),
        )
    );
  }
}