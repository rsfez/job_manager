import 'package:job_manager/data/roles/role.dart';
import 'package:json_annotation/json_annotation.dart';

part 'roles.g.dart';

@JsonSerializable()
class Roles {
  @JsonKey(name: 'current_role')
  final Role currentRole;
  @JsonKey(name: 'other_roles')
  final List<Role> other;

  Roles({required this.currentRole, required this.other});

  factory Roles.fromJson(Map<String, dynamic> json) => _$RolesFromJson(json);

  factory Roles.empty() => Roles(currentRole: Role.empty(), other: <Role>[]);

  Role getRole(int index) {
    switch (index) {
      case 0:
        return currentRole;
      default:
        return other[index - 1];
    }
  }

  int getLength() => other.length + 1;
}
