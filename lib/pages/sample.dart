import 'package:flutter/material.dart';

class SunflowerPage extends StatelessWidget {
  const SunflowerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First app")),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.purple,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/31256342/pexels-photo-31256342.jpeg?cs=srgb&dl=pexels-optical-chemist-340351297-31256342.jpg&fm=jpg",
                ),
                radius: 100,
              ),
              const SizedBox(height: 10),
              const Text(
                "Sunflower",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Container(height: 80, width: 200, color: Colors.orange),
              const SizedBox(height: 10),
              Container(height: 80, width: 200, color: Colors.green),
              const SizedBox(height: 10),
              Container(height: 80, width: 200, color: Colors.lightBlueAccent),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 80, width: 80, color: Colors.orange),
                  const SizedBox(width: 10),
                  Container(height: 80, width: 80, color: Colors.green),
                  const SizedBox(width: 10),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
