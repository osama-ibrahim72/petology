class Footer {
  final String email, phone,location,loction2;
  // location --> address
  // location2 --> city & country
  const Footer({required this.email,required this.location,required this.loction2,required this.phone});
  factory Footer.fromJson (Map<String,dynamic>json){
    return Footer(email: json['email'], location: json['location'], loction2: json['location2'], phone: json['phone']);
  }
}