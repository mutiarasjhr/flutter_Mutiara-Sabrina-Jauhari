class ContactModel {
  int id;
  String name;
  String phone;

  ContactModel({required this.id, required this.name, required this.phone});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
    };
  }

  factory ContactModel.fromJSON(Map<String, dynamic> json) {
    return ContactModel(
        id: json['id'], name: json['name'], phone: json['phone']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'phone': phone};
  }
}
