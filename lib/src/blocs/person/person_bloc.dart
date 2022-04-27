import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:name_ranking/src/blocs/person/person_event.dart';
import 'package:name_ranking/src/blocs/person/person_state.dart';
import 'package:name_ranking/src/models/person.dart';

export 'package:name_ranking/src/blocs/person/person_event.dart';
export 'package:name_ranking/src/blocs/person/person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc() : super(PersonStateLoading()) {
    on<PersonEventFetch>(_fetch);
  }

  void _fetch(PersonEventFetch event, Emitter<PersonState> emit) async {
    emit(PersonStateLoading());

    try {
      var data = await PersonApi.fetchList();
      emit(PersonStateData(data));
    } on DioError catch (e) {
      emit(PersonStateError(e.message));
    } catch (e) {
      emit(PersonStateError(e.toString()));
    }
  }
}
