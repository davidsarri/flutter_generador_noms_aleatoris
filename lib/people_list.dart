import 'package:flutter/material.dart';
import 'package:random_name_generator/random_name_generator.dart';
import 'package:test_app/vistes/people_list_view.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<StatefulWidget> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final _suggestions = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  final _randomNames = RandomNames(Zone.spain);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        // Genera més noms si cal
        if (i >= _suggestions.length) {
          _suggestions.addAll(
            List.generate(10, (_) => _randomNames.fullName()),
          );
        }

        return PeopleListView(
          suggestions: _suggestions,
          biggerFont: _biggerFont,
          index: i, // Passem l'índex per renderitzar cada ítem
        );
      },
    );
  }
}
