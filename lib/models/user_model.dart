class UserModel {
  String id, name, imageUrl;
  String? phone;
  List<String>? friends;

  static List<UserModel> users = [];

  UserModel({
    required this.id,
    required this.name,
    this.phone,
    required this.imageUrl,
    this.friends,
  });
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(id: map['id'], name: map['name'], imageUrl: map['imageUrl']);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      if (phone != null) 'phone': phone,
      if (friends != null) 'friends': friends,
    };
  }
}
