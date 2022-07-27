class PetNeeds {
  final String imageUrl,title;
  const PetNeeds({required this.title,required this.imageUrl});
  factory PetNeeds.fromJson(Map<String,dynamic>json){
    return PetNeeds(title: json['title'], imageUrl: json['imageUrl']);
  }
}