class Product {
  final String id;
  final String title;
  final String imagepath;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.imagepath,
    required this.price,
  });
  static List<Product> products = [
    Product(
      id: "1",
      title: "View",
      imagepath: "assets/nature.jpg",
      price: 10000,
    ),

    Product(
      id: "1",
      title: "Lion",
      imagepath: "https://tse1.mm.bing.net/th/id/OIP.VHrrZ5rVN4xig1TS0PE0lwHaLH?r=0&pid=ImgDet&w=189&h=283&c=7&o=7&rm=3",
      price: 110000,
    ),
  ];
}
