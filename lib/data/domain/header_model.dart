class HeaderModel {
  final int backgroundColor;
  final int textColor;
  final String fullName;
  final String roleName;
  final String companyName;

  HeaderModel(
      {required this.backgroundColor,
      required this.textColor,
      required this.fullName,
      required this.roleName,
      required this.companyName});

  String getTitle() => fullName;

  String getSubtitle() => "$roleName - $companyName";
}
