import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapa FETEPS',
      theme: ThemeData(
        primaryColor: Color(0xFFB6382B), // Cor marrom
        scaffoldBackgroundColor: Colors.white, // Fundo branco
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('                     Explore o evento sem se perder!'),
        backgroundColor: Color(0xFF572b11),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFB6382B), Color(0xFFFFD35F)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Espaço para a imagem
              Image.asset(
                'MAPA.png', // Substitua pelo caminho correto da imagem
                width: 400, // Defina a largura desejada para a imagem
                height: 400, // Defina a altura desejada para a imagem
              ),
            ],
          ),
        ),
      ),
    );
  }
}
