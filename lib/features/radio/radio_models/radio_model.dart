import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class RadioModel {
  final List<Radios>? radios;

  const RadioModel({
    required this.radios,
  });

  factory RadioModel.fromJson(Map<String, dynamic> json) {
    return RadioModel(
        radios: (json['radios'] as List)
            .map((e) => Radios.fromJson(e))
            .toList());
  }

  Map<String, dynamic> toJson() {
    return {'radios': radios};
  }
}

@JsonSerializable()
class Radios {
  final int? id;
  final String? name;
  final String? url;
  final String? recentDate;

  const Radios({
    required this.id,
    required this.name,
    required this.url,
    required this.recentDate,
  });

  factory Radios.fromJson(Map<String, dynamic> json) {
    return Radios(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      recentDate: json['recent_date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'recent_date': recentDate,
    };
  }
}
