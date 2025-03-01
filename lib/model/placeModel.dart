import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Placemodel {
  String district;
  String block;
  Placemodel({
    required this.district,
    required this.block
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'district': district,
    };
  }

  factory Placemodel.fromMap(Map<String, dynamic> map) {
    return Placemodel(
      district: map['district'] as String,
      block:  map['block'] as String
    );
  }

  String toJson() => json.encode(toMap());

  factory Placemodel.fromJson(String source) =>
      Placemodel.fromMap(json.decode(source) as Map<String, dynamic>);
}
