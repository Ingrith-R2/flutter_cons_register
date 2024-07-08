class Perro {
  final String name;
  final String url;

  Perro({required this.name, required this.url});

  factory Perro.fromJson(Map<String, dynamic> json){
    return Perro(
      name: json['name'],
      url: json['url'],
    );
  }
}