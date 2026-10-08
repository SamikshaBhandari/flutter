import 'package:flutter/material.dart';
import 'package:my_app/models/product_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            product.imagepath.startsWith('http')
                ? Image.network(product.imagepath, height: 400)
                : Image.asset(product.imagepath, height: 400),

            Text(
              product.title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$ ${product.price}",
              style: Theme.of(context).textTheme.bodyLarge
                  ?.copyWith(fontSize: 19),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
