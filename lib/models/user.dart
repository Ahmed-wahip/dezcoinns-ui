class UserModel {
  String username;
  String id;
  String email;

  UserModel({required this.id, required this.username, required this.email});
  factory UserModel.toJson(Map json) {
    return UserModel(
        id: json['user_Id'], username: json['name'], email: json['email']);
  }
}
