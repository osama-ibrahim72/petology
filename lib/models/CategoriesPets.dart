class CategoriesPets {
  final int id, categoryId, userId;
  final String name,
      breed,
      age,
      size,
      goodWith,
      color,
      hairLength,
      behaviour,
      category,
      firstName,
      lastName,
      description,
      phone,
      location;
  final bool vaccinated, houseTrained;

  const CategoriesPets(
      {required this.phone,
      required this.location,
      required this.age,
      required this.behaviour,
      required this.breed,
      required this.category,
      required this.categoryId,
      required this.color,
      required this.description,
      required this.firstName,
      required this.goodWith,
      required this.hairLength,
      required this.houseTrained,
      required this.id,
      required this.lastName,
      required this.name,
      required this.size,
      required this.userId,
      required this.vaccinated});

  factory CategoriesPets.fromJson(Map<String, dynamic> json) {
    return CategoriesPets(
        phone: json['phone'],
        location: json['location'],
        age: json['age'],
        behaviour: json['behaviour'],
        breed: json['breed'],
        category: json['category'],
        categoryId: json['categoryId'],
        color: json['color'],
        description: json['description'],
        firstName: json['user']['firstName'],
        goodWith: json['goodWith'],
        hairLength: json['hairLength'],
        houseTrained: json['houseTrained'],
        id: json['id'],
        lastName: json['user']['lastName'],
        name: json['name'],
        size: json['size'],
        userId: json['userId'],
        vaccinated: json['vaccinated']);
  }
}
