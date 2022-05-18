class ItemModel {
  static final product = [
    Items(
        id: 123456,
        name: "Iphone 11",
        desc: "This is Iphone 11 pro max Mobile Phone",
        price: 999,
        color: "#e6c327",
        imgeUrl:
            "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-11-1.jpg")
  ];
}

class Items {
  int id;
  String name;
  String desc;
  double price;
  String color;
  String imgeUrl;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imgeUrl});
}
