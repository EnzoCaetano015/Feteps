import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Categoria {
  final String nome;
  final String imagem;
  final String descricao;

  Categoria({
    required this.nome,
    required this.imagem,
    required this.descricao,
  });
}

class MyApp extends StatelessWidget {
  final List<Categoria> categorias = [

    Categoria(
      nome: 'Vida terrestre',
      imagem: '15.png',
      descricao: 'Descrição da Categoria 1',
    ),
    Categoria(
      nome: 'Paz, justiça e instituições eficazes',
      imagem: '16.png',

      descricao: 'Descrição da Categoria 2',
    ),
    Categoria(
      nome: 'Parcerias e meios de implementação',
      imagem: '17.png',
      descricao: 'Descrição da Categoria 3',
    ),
    Categoria(
      nome: ' Educação de qualidade',
      imagem: '4.png',
      descricao: 'Descrição da Categoria 4',
    ),
    Categoria(
      nome: ' Água potável e Saneamento',
      imagem: '6.png',
      descricao: 'Descrição da Categoria 5',
    ),
    Categoria(
      nome: 'Igualdade de Gênero',
      imagem: '5.png',
      descricao: 'Descrição da Categoria 6',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF572b11),
          title: Text('                          Categoria Dos Projetos'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFB6382B), Color(0xFFFFD35F)],
            ),
          ),
          child: ListView.builder(
            itemCount: categorias.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE8B7), // Cor um pouco mais clara
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      categorias[index].imagem, // Use o caminho da imagem da categoria
                      width: 50, // Defina a largura desejada para a imagem
                      height: 50, // Defina a altura desejada para a imagem
                    ),
                    title: Text(categorias[index].nome),
                    subtitle: Text(categorias[index].descricao),
                    onTap: () {
                      // Ação ao tocar no item da lista, você pode navegar para outra tela ou fazer algo aqui.
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
