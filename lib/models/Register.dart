class Register {
  final String email, password, firstName, secondName, phoneNumber, country;

  Register(
      {required this.email,
      required this.password,
      required this.country,
      required this.firstName,
      required this.phoneNumber,
      required this.secondName});

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
        email: json['email'],
        password: json['password'],
        country: json['country'],
        firstName: json['firstName'],
        phoneNumber: json['phoneNumber'],
        secondName: json['secondName']);
  }
}
