import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feira Tecnológica do Centro Paula Souza',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0xFFB6382B), // Marrom
        hintColor: Color(0xFFFFD35F), // Amarelo
        scaffoldBackgroundColor: Colors.white, // Fundo branco
      ),
    );
  }
}

class HomePage extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40), // Espaço acima da data e local
            Text(
              'Feira Tecnológica do Centro Paula Souza',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30), // Espaço entre a data/local e o contador
            Text(
              ' 14 de Março de 2024 - São Paulo',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 100), // Espaço entre o contador e o botão
            CountdownTimer(), // Widget do contador
            SizedBox(height: 150),
            Text(
              'O futuro começa com você, cadastre-se!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Adicione a ação do botão aqui
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF572B11), // Cor marrom
              ),
              child: Text('Cadastro'),
            ),
          ],
        ),
      ),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  // Defina a data e hora final para o contador
  final DateTime eventDate = DateTime(2023, 11, 1, 0, 0);

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    Duration timeLeft = eventDate.difference(currentDate);

    int days = timeLeft.inDays;
    int hours = timeLeft.inHours % 24;
    int minutes = timeLeft.inMinutes % 60;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountdownItem(value: days, label: 'Dias'),
            CountdownItem(value: hours, label: 'Horas'),
            CountdownItem(value: minutes, label: 'Minutos'),
          ],
        ),
      ],
    );
  }
}

class CountdownItem extends StatelessWidget {
  final int value;
  final String label;

  CountdownItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            '$value',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
