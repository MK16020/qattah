class GroupModel {
  String id, name, imageUrl;
  List<String> members;
  static List<GroupModel> groups = [];

  GroupModel({
    required this.id,
    required this.name,
    required this.members,
    required this.imageUrl,
  });
  factory GroupModel.fromMap(Map<String, dynamic> map) {
    return GroupModel(
      id: map['id'],
      name: map['name'],
      members: map['members'],
      imageUrl: map['imageUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'members': members,
      'imageUrl': imageUrl,
    };
  }
}
