import 'package:flutter/material.dart';
import 'package:my_app/models/product_model.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Namuna ecommerce")),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Text("Hello $index", style: TextStyle(fontSize: 30));
        },
      ),
    );
  }
}
