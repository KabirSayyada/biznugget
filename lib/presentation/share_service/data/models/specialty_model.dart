class SpecialtyType {
  final List<String> specialtyType;

  SpecialtyType({required this.specialtyType});

  factory SpecialtyType.fromJson(Map<String, dynamic> json) {
    return SpecialtyType(
      specialtyType: json['specialtyType'],
    );
  }
}
