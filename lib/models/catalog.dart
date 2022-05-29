class ItemModel {
  static List<Item> item = [];
}

class Item {
  final int id;
  final String name;
  final int price;
  final String desc;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.desc,
      required this.color,
      required this.image});

  factory Item.fromJson(Map<String, dynamic> map) {
    return Item(
        id: map["id"] as int,
        name: map["name"] as String,
        price: map["price"],
        desc: map["desc"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "desc": desc,
        "color": color,
        "image": image
      };
}
