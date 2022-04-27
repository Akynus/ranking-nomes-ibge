import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:name_ranking/src/models/person.dart';
import 'package:name_ranking/src/widgets/fields/input_decorated_custom.dart';

class GridViewDetail extends StatelessWidget {
  final Person model;

  const GridViewDetail({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Wrap(
        children: [
          InputDecoratedCustom(
            label: translate('person_detail.field.name'),
            value: model.name,
          ),
          InputDecoratedCustom(
            label: translate('person_detail.field.frequency'),
            value: model.frequency.toString(),
          ),
          InputDecoratedCustom(
            label: translate('person_detail.field.rank'),
            value: model.rank.toString(),
          ),
          InputDecoratedCustom(
            label: translate('person_detail.field.sex'),
            value: model.sex,
          ),
        ],
      ),
    );
  }
}
