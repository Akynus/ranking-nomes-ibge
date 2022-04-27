import 'package:flutter/material.dart';

class InputDecoratedCustom extends StatelessWidget {
  final String label;
  final String value;

  const InputDecoratedCustom({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 250,
      ),
      margin: const EdgeInsets.only(left:10, bottom: 10),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          filled: true,
        ),
        child: Text(value),
      ),
    );
  }
}
