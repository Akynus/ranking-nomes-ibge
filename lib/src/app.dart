import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:name_ranking/src/blocs/person/person_bloc.dart';
import 'package:name_ranking/src/resources/theme.dart';
import 'package:name_ranking/src/views/home_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget _providerInject({required Widget child}) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => PersonBloc(),
        ),
      ],
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return _providerInject(
      child: MaterialApp(
        theme: theme,
        locale: localizationDelegate.currentLocale,
        supportedLocales: localizationDelegate.supportedLocales,
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          localizationDelegate,
        ],
        home: const HomeView(),
      ),
    );
  }
}
