class SecondSection{
  final String title,body;
  const SecondSection({required this.title, required this.body});
  factory SecondSection.fromJson(Map<String,dynamic> json){
    return SecondSection(title: json['title'], body: json['body']);
  }
}