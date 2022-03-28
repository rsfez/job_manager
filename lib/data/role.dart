import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

@JsonSerializable()
class Role {
  @JsonKey(name: 'name')
  final String name;

  const Role({required this.name});

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  factory Role.empty() => const Role(name: '');
}
