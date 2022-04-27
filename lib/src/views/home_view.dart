import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:name_ranking/src/blocs/person/person_bloc.dart';
import 'package:name_ranking/src/models/person.dart';
import 'package:name_ranking/src/views/detail_view.dart';
import 'package:name_ranking/src/widgets/commons/centered_error.dart';
import 'package:name_ranking/src/widgets/commons/centered_loader.dart';
import 'package:name_ranking/src/widgets/layouts/layout_home.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();

    _refreshList();
  }

  void _refreshList() {
    context.read<PersonBloc>().add(PersonEventFetch());
  }

  void _onSelected(Person model) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(model: model),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate('home.app_bar_title')),
        actions: [
          IconButton(
            onPressed: _refreshList,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: BlocBuilder<PersonBloc, PersonState>(
        builder: (BuildContext context, state) {
          if (state is PersonStateData) {
            return LayoutHome(onSelected: _onSelected, data: state.data);
          }

          if (state is PersonStateError) {
            return CenteredError(message: state.message);
          }

          return const CenteredLoader();
        },
      ),
    );
  }
}
