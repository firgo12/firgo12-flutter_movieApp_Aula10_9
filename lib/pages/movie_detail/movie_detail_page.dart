import 'package:flutter/material.dart';

class DetalhesFilmePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Filme'),
        backgroundColor: Colors.amber[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem do filme
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://link-para-imagem-filme.com/poster.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Título e classificação
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Título do Filme',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          SizedBox(width: 4),
                          Text(
                            '8.5/10',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  // Gênero, duração e data de lançamento
                  Text(
                    'Gênero: Ação, Aventura',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Duração: 2h 30min',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Lançamento: 10 de Setembro, 2024',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  // Sinopse
                  Text(
                    'Sinopse',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Quisque sodales lorem ac purus consequat, nec egestas arcu tempor. '
                    'Pellentesque id magna vitae neque facilisis facilisis.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  // Elenco
                  Text(
                    'Elenco',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ator 1, Ator 2, Ator 3, Ator 4',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  // Botão para assistir trailer
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Ação ao clicar no botão
                      },
                      icon: Icon(Icons.play_arrow),
                      label: Text('Assistir Trailer'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[700],
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}