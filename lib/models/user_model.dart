class UserModel {
  String id, name, imageUrl;
  String? phone;

  UserModel({
    required this.id,
    required this.name,
    this.phone,
    required this.imageUrl,
  });
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      phone: map['phone'],
      imageUrl: map['imageUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      if (phone != null) 'phone': phone,
    };
  }
}
