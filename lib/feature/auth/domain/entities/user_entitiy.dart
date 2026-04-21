class UserEntity {
  final String email;
  final String uId;
  final String name;

  UserEntity({required this.email, required this.uId, required this.name});

  Map<String, String> toMap() {
    return {'email': email, 'uId': uId, 'name': name};
  }
}
