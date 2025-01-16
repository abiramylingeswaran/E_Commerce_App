class SignupModel {
  String username;
  String email;
  String password;

  SignupModel({required this.username, required this.email, required this.password});

  
  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'email': email,
      'password': password,
    };
  }

  
  factory SignupModel.fromMap(Map<String, dynamic> map) {
    return SignupModel(
      username: map['username'],
      email: map['email'],
      password: map['password'],
    );
  }
}
