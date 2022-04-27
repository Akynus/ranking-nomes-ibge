import 'package:flutter/material.dart';
import 'package:name_ranking/src/models/person.dart';
import 'package:name_ranking/src/widgets/cards/card_item_person.dart';

class ListViewPerson extends StatelessWidget {
  final void Function(Person model) onSelected;
  final List<Person> data;

  const ListViewPerson({
    Key? key,
    required this.data,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      itemCount: data.length,
      itemBuilder: (_, index) {
        var model = data[index];
        return CardItemPerson(
          model: model,
          onPressed: () => onSelected(model),
        );
      },
    );
  }
}
