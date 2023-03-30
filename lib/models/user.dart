class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String? profileImage;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    this.profileImage,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data["id"],
      name: data["name"],
      userName: data["user_name"],
      email: data["email"],
      profileImage: data["profile_image"],
      phoneNumber: data["phone_number"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "user_name": userName,
      "email": email,
      "profile_image": profileImage,
      "phoneNumber": phoneNumber,
    };
  }

  factory User.dummy() {
    return User(
      id: 0001,
      name: "Nizar Buchori",
      userName: "ibnoemuttaqien",
      email: "2006158@it.ac.id",
      profileImage: "https://i.postimg.cc/zfXsLY9L/20210715173725-IMG-0858.jpg",
    );
  }
}
