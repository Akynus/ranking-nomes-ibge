import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:name_ranking/src/models/person.dart';

enum ViewType { grid, list }

class CardItemPerson extends StatelessWidget {
  final VoidCallback? onPressed;
  final ViewType type;
  final Person model;

  const CardItemPerson({
    Key? key,
    this.onPressed,
    this.type = ViewType.list,
    required this.model,
  }) : super(key: key);

  Widget get _title {
    return Text(
      model.name,
      style: const TextStyle(fontWeight: FontWeight.w600),
    );
  }

  Widget get _subTitle {
    return Text(translate('card_item_person.frequency', args: {'frequency': model.frequency}));
  }

  Widget get _listType {
    return ListTile(
      onTap: onPressed,
      title: _title,
      subtitle: _subTitle,
    );
  }

  Widget get _gridType {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_title, _subTitle],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: (type == ViewType.list) ? _listType : _gridType,
    );
  }
}
