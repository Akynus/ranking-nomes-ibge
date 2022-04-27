import 'package:flutter/material.dart';
import 'package:name_ranking/src/models/person.dart';
import 'package:name_ranking/src/widgets/gridviews/gridview_person.dart';
import 'package:name_ranking/src/widgets/listviews/listview_person.dart';

class LayoutHome extends StatelessWidget {
  final void Function(Person model) onSelected;
  final List<Person> data;

  const LayoutHome({
    Key? key,
    required this.onSelected,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.landscape) return GridViewPerson(data: data, onSelected: onSelected);
        return ListViewPerson(data: data, onSelected: onSelected);
      },
    );
  }
}
