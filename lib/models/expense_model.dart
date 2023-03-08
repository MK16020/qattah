class ExpenseModel {
  String id, name, imageUrl;
  double amount;
  List<String>? userId;
  static List<ExpenseModel> expenses = [];
  String payer;

  ExpenseModel({
    required this.id,
    required this.name,
    this.userId,
    required this.imageUrl,
    required this.amount,
    required this.payer,
  });
  factory ExpenseModel.fromMap(Map<String, dynamic> map) {
    return ExpenseModel(
      id: map['id'],
      name: map['name'],
      userId: map['userId'],
      imageUrl: map['imageUrl'],
      amount: map['amount'],
      payer: map['payer'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      if (userId != null) 'userId': userId,
      'amount': amount,
      'payer': payer,
    };
  }
}
