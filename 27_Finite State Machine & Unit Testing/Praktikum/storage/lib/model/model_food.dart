class FoodModel {
  final int? id;
  final String name;

  FoodModel({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory FoodModel.fromJSON(Map<String, dynamic> json) =>
      FoodModel(id: json['id'], name: json['name']);

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
