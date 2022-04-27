import 'package:equatable/equatable.dart';
import 'package:name_ranking/src/models/person.dart';

abstract class PersonState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PersonStateData extends PersonState {
  final List<Person> data;

  PersonStateData(this.data);
}

class PersonStateError extends PersonState {
  final String message;

  PersonStateError(this.message);
}

class PersonStateLoading extends PersonState {}
