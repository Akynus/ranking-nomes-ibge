import 'package:flutter/material.dart';

AppBarTheme get _appBarTheme {
  return const AppBarTheme(
    centerTitle: true,
  );
}

ThemeData get theme {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.indigo,
    ),
    scaffoldBackgroundColor: Colors.grey.shade200,
    appBarTheme: _appBarTheme,
  );
}
