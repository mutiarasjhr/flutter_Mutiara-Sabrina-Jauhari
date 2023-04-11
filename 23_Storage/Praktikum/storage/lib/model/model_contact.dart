class ModelContact {
  late int? id;
  late String name;
  late String phoneNum;

  ModelContact({required this.id, required this.name, required this.phoneNum});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phoneNum': phoneNum,
    };
  }

  ModelContact.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    phoneNum = map['phoneNum'];
  }
}
