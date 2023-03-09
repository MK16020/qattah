class GroupModel {
  String id, name, imageUrl, type;
  List<String>? members;
  static List<GroupModel> groups = [];

  GroupModel({
    required this.id,
    required this.name,
    required this.type,
    this.members,
    required this.imageUrl,
  });
  factory GroupModel.fromMap(Map<String, dynamic> map) {
    return GroupModel(
      id: map['id'],
      name: map['name'],
      type: map['type'],
      members: map['members'],
      imageUrl: map['imageUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      if (members != null) 'members': members,
      'imageUrl': imageUrl,
    };
  }
}
