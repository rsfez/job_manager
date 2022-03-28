class HeaderModel {
  final int backgroundColor;
  final String fullName;
  final String roleName;
  final String companyName;

  HeaderModel(
      {required this.backgroundColor,
      required this.fullName,
      required this.roleName,
      required this.companyName});

  String getTitle() => fullName;

  String getSubtitle() => "$roleName - $companyName";
}
