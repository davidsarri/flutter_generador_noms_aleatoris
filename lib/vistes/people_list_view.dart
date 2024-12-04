import 'package:flutter/material.dart';
import 'package:test_app/vistes/detall_nom_view.dart';

class PeopleListView extends StatelessWidget {
  final List<String> suggestions;
  final TextStyle biggerFont;
  final int index; 

  const PeopleListView({
    super.key,
    required this.suggestions,
    required this.biggerFont,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = index.isEven ? Colors.grey[200] : Colors.white;
    final name = suggestions[index];

    return Container(
      color: backgroundColor, 
      child: Column(
        children: [
          ListTile(
            title: Text(
              suggestions[index], 
              style: biggerFont.copyWith(
                fontFamily: 'Montserrat', 
                fontSize: 16, 
                fontWeight: FontWeight.bold, 
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallNom(nom: name),
                ),
              );
            },
          ),
          const Divider(height: 1), 
        ],
      ),
    );
  }
}
