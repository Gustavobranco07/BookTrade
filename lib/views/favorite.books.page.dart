import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class FavoriteBooksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFD8D5B3), // Cor amarelada da barra superior
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop(); // Voltar para a página anterior
          },
        ),
        title: Text(
          'Lista de desejos',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 3, // Número de itens na lista
        itemBuilder: (context, index) {
          return BookCardWithHeart();
        },
      ),
    );
  }
}

class BookCardWithHeart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Card do Livro
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.only(bottom: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // Imagem do livro
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://via.placeholder.com/100', // Substituir pela URL da imagem do livro
                      height: 100,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),

                  // Informações do livro
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1984',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'De George Orwell',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Postado por:',
                          style: TextStyle(fontSize: 12),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://via.placeholder.com/50'), // Imagem do perfil do usuário
                              radius: 15,
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'José Almeida',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  // Estrelas de avaliação
                                  RatingBarIndicator(
                                    rating: 4.0,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 16.0,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Ícone de Coração posicionado na diagonal superior direita do Card
        Positioned(
          top: 3,
          right: -12,
          child: Container(
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //color: Colors.white, // Cor de fundo para destacar o coração
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.green,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}