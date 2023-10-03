import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FETEPS ',
      home: RegistrationPage(),
      theme: ThemeData(
        primaryColor: Color(0xFFB6382B), // Marrom
        hintColor: Color(0xFFFFD35F), // Amarelo
        scaffoldBackgroundColor: Colors.white, // Fundo branco
      ),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _countryRegion = '';
  String? _role;
  String? _selectedEtecFatec;

  List<String> _etecFatecOptions = [
    'Etec Option 1',
    'Etec Option 2',
    'Fatec Option 1',
    'Fatec Option 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF572b11),
        title: Text('                         FETEPS 2024 - Registro'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              //  lógica do menu aqui
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // Início do gradiente na parte superior
            end: Alignment.bottomCenter, // Fim do gradiente na parte inferior
            colors: [Color(0xFFB6382B), Color(0xFFFFD35F)], // Gradiente de marrom para amarelo
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          contentPadding: EdgeInsets.all(16.0),
                          fillColor: Colors.white, // Cor do campo de entrada
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira um e-mail válido';

                          }
                          return null;

                        },
                        onChanged: (value) {
                          setState(() {
                            _email = value;
                          });
                        },
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Cidade/Estado/País',
                          contentPadding: EdgeInsets.all(16.0),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _countryRegion = value;
                          });
                        },
                      ),
                      SizedBox(height: 16),
                      Text('Selecione uma opção:'),
                      RadioListTile<String>(
                        title: Text('Professor'),
                        value: 'Professor',
                        groupValue: _role,
                        onChanged: (value) {
                          setState(() {
                            _role = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Aluno'),
                        value: 'Aluno',
                        groupValue: _role,
                        onChanged: (value) {
                          setState(() {
                            _role = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Outros'),
                        value: 'Outros',
                        groupValue: _role,
                        onChanged: (value) {
                          setState(() {
                            _role = value;
                          });
                        },
                      ),
                      SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: _selectedEtecFatec,
                        onChanged: (value) {
                          setState(() {
                            _selectedEtecFatec = value;
                          });
                        },
                        items: _etecFatecOptions.map((String option) {
                          return DropdownMenuItem<String>(
                            value: option,
                            child: Text(option),
                          );
                        }).toList(),
                        hint: Text('Selecione sua Etec/Fatec (Opcional)'),
                      ),
                      SizedBox(height: 60),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {

                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF572B11), // Cor marrom
                        ),
                        child: Text('Enviar'),

                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
