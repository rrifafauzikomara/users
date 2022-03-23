class UserResponse {
  UserResponse({
    required this.data,
  });

  final List<DataUser> data;

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        data: List<DataUser>.from(json["data"].map((x) => DataUser.fromJson(x))),
      );
}

class DataUser {
  DataUser({
    required this.name,
    required this.address,
  });

  final String? name;
  final String? address;

  factory DataUser.fromJson(Map<String, dynamic> json) => DataUser(
        name: json["name"],
        address: json["address"],
      );
}
