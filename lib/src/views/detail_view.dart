import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:name_ranking/src/models/person.dart';
import 'package:name_ranking/src/widgets/layouts/layout_detail.dart';

class DetailView extends StatefulWidget {
  final Person model;

  const DetailView({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('person_detail.app_bar_title')),
      ),
      body: LayoutDetail(model: widget.model),
    );
  }
}
