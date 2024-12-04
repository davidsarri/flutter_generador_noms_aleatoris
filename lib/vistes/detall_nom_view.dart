import 'dart:math';

import 'package:flutter/material.dart';

class DetallNom extends StatelessWidget {
  final String nom;

  const DetallNom({super.key, required this.nom});

   String _generadorPopularitat() {
    final numeroAleatori = Random();
    final indexPopularitat = numeroAleatori.nextInt(3); 
    switch (indexPopularitat) {
      case 0:
        return 'Baixa';
      case 1:
        return 'Moderada';
      case 2:
        return 'Alta';
      default:
        return 'Desconeguda'; 
    }
  }

  @override
  Widget build(BuildContext context) {
    final popularitat = _generadorPopularitat();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Detalls del nom',
          style: TextStyle(
                    fontFamily: 'Montserrat', 
                    fontWeight: FontWeight.bold,
                  ),
          ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          elevation: 8.0, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nom, 
                  style: const TextStyle(
                    fontFamily: 'Montserrat', 
                    fontSize: 16, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Origen: Espanya',
                  style: TextStyle( 
                    fontFamily: 'Montserrat', 
                    fontSize: 16, ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Significat: Aquest és un nom aleatori.',
                  style: TextStyle(
                    fontFamily: 'Montserrat', 
                    fontSize: 16, 
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Popularitat: $popularitat',
                  style: const TextStyle( 
                    fontFamily: 'Montserrat', 
                    fontSize: 16, ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
