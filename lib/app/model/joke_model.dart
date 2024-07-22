class JokeModel {
  final String category;
  final String type;
  final String? setup;
  final String? delivery;
  final String? joke;

  JokeModel(
    this.setup,
    this.delivery,
    this.joke, {
    required this.category,
    required this.type,
  });

  factory JokeModel.fromJson(dynamic json) {
    return JokeModel(
      json['setup'] ?? '',
      json['delivery'] ?? '',
      json['joke'] ?? '',
      category: json['category'] ?? '',
      type: json['type'] ?? '',
    );
  }
}
