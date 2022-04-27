// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      name: json['nome'] as String? ?? '',
      region: json['regiao'] as int? ?? 0,
      frequency: json['freq'] as int? ?? 0,
      rank: json['rank'] as int? ?? 0,
      sex: json['sexo'] as String? ?? '',
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'nome': instance.name,
      'regiao': instance.region,
      'freq': instance.frequency,
      'rank': instance.rank,
      'sexo': instance.sex,
    };
