import 'package:flutter/material.dart';
import 'package:name_ranking/src/models/person.dart';
import 'package:name_ranking/src/widgets/gridviews/gridview_detail.dart';
import 'package:name_ranking/src/widgets/listviews/listview_field.dart';

class LayoutDetail extends StatelessWidget {
  final Person model;

  const LayoutDetail({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.landscape) return GridViewDetail(model: model);
        return ListViewField(model: model);
      },
    );
  }
}
