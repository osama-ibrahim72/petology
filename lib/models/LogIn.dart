class LogIn {
  final String email,password;
  LogIn({required this.email,required this.password});
  factory LogIn.fromJson(Map<String,dynamic>json){
    return LogIn(email: json['email'], password: json['password']);
  }
}