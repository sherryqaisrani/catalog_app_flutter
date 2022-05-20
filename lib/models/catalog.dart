class ItemModel {
  static List<Item> item = [];
}

class Item {
  int id;
  String title;
  int price;
  String description;
  String category;
  String image;

  Item(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image});

  factory Item.fromJson(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        title: map["title"],
        price: map["price"],
        description: map["description"],
        category: map["category"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image
      };
}
