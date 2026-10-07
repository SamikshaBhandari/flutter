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
  List<Product> products = [
    Product(
      id: "1",
      title: "Iphone 15",
      imagepath: "assets\nature.jpg",
      price: 110000,
    ),
  ];
}
