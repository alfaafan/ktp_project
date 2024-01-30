class Province {
  String id;
  String name;
  String altName;
  double latitude;
  double longitude;

  Province({
    required this.id,
    required this.name,
    required this.altName,
    required this.latitude,
    required this.longitude,
  });

  factory Province.fromJson(Map<String, dynamic> json) => Province(
        id: json["id"],
        name: json["name"],
        altName: json["alt_name"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alt_name": altName,
        "latitude": latitude,
        "longitude": longitude,
      };
}
