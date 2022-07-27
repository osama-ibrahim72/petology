class FirstSction {
  final String title, body;
  const FirstSction({ required this.title,required this.body});
  factory FirstSction.fromJson(Map<String,dynamic> json){
    return FirstSction(
      title : json["title"],
      body : json["body"],);
  }

}