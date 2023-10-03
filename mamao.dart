import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FETEPS App',
      theme: ThemeData(
        backgroundColor: Color(0xFFB6382B), // Cor marrom
        scaffoldBackgroundColor: Colors.white, // Fundo branco
      ),
      home: EntryPage(),
    );
  }
}

class EntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFB6382B), Color(0xFFFFD35F)],
          ),
        ),
        child: Center(
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Espaço para o logo da FETEPS
                  Image.asset(
                    'logo01.png',
                    width: 3000, //  tamanho para o logo
                    height: 550,
                  ),
                ],
              ),
              Positioned(
                left: -80,
                bottom: 30, //  subir a imagem
                child: Container(
                  height: 40, // Altura da imagem
                  width: 300,
                  child: Image.asset('cps.png'), //  primeira imagem aqui
                ),
              ),
              Positioned(
                right: -70,
                bottom: 20, //  subir a imagem
                child: Container(
                  height: 60, // Altura da imagem
                  width: 300,
                  child: Image.asset('govsp.png'), //  segunda imagem aqui
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
