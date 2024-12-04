import 'package:flutter/material.dart';
import 'package:test_app/people_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: const Text(
          'Generador de noms',
          style: TextStyle(
                    fontFamily: 'Montserrat', 
                    fontWeight: FontWeight.bold,
                  ),
          ),
      ),
      body: const Center(child: PeopleList()),
    );
  }
}