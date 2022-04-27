import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  Person({
    this.name = '',
    this.region = 0,
    this.frequency = 0,
    this.rank = 0,
    this.sex = '',
  });

  @JsonKey(name: 'nome')
  String name;
  @JsonKey(name: 'regiao')
  int region;
  @JsonKey(name: 'freq')
  int frequency;
  @JsonKey(name: 'rank')
  int rank;
  @JsonKey(name: 'sexo')
  String sex;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

class PersonApi {
  static Future<List<Person>> fetchList() async {
    final dio = Dio();
    var response = await dio.get("https://servicodados.ibge.gov.br/api/v2/censos/nomes");
    List<Map<String, dynamic>> data = List.castFrom(response.data);
    return data.map(Person.fromJson).toList();
  }
}
