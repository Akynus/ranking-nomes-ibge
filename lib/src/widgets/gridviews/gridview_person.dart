import 'package:flutter/material.dart';
import 'package:name_ranking/src/models/person.dart';
import 'package:name_ranking/src/widgets/cards/card_item_person.dart';

class GridViewPerson extends StatelessWidget {
  final void Function(Person model) onSelected;
  final List<Person> data;

  const GridViewPerson({
    Key? key,
    required this.onSelected,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (size.width ~/ 250).toInt(),
      ),
      itemCount: data.length,
      itemBuilder: (_, index) {
        var model = data[index];
        return CardItemPerson(
          type: ViewType.grid,
          model: model,
          onPressed: () => onSelected(model),
        );
      },
    );
  }
}
