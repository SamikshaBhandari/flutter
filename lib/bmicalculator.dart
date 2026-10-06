import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "BMI Calculator", home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _weightInKgController = TextEditingController();
  final TextEditingController _heightInKgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("BMI Calculator")),
      body: Container(
        padding: EdgeInsets.all(16),
        color: const Color.fromARGB(255, 77, 208, 226),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Text("Calculate your BMI", style: TextStyle(fontSize: 30)),

            TextField(
              controller: _weightInKgController,
              decoration: InputDecoration(
                hintText: "Enter your weight in kg",
                labelText: "Weight(kg)",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            TextField(
              controller: _heightInKgController,
              decoration: InputDecoration(
                hintText: "Enter your height in kg",
                labelText: "Height(kg)",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(
              width: double.maxFinite,
              child: FilledButton(onPressed: () {}, child: Text("Calculate")),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Calculate")),
            OutlinedButton(onPressed: () {}, child: Text("Calculate")),
            IconButton(onPressed: () {}, icon: Icon(Icons.calculate)),
          ],
        ),
      ),
    );
  }
}
