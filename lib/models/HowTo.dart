class HowTo {
  final String title, body;

  const HowTo({required this.title, required this.body});

  factory HowTo.fromJson(Map<String, dynamic> json) {
    return HowTo(title: json['title'], body: json['body']);
  }
}
