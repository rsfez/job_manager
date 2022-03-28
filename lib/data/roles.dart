import 'package:job_manager/data/role.dart';
import 'package:json_annotation/json_annotation.dart';

part 'roles.g.dart';

@JsonSerializable()
class Roles {
  @JsonKey(name: 'current_role')
  final Role currentRole;
  @JsonKey(name: 'previous_roles')
  final List<Role> previousRoles;

  Roles({required this.currentRole, required this.previousRoles});

  factory Roles.fromJson(Map<String, dynamic> json) => _$RolesFromJson(json);

  factory Roles.empty() =>
      Roles(currentRole: Role.empty(), previousRoles: <Role>[]);
}
