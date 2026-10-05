import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First app")),
      body: Container(
        color: Colors.purple,
        width: double.maxFinite,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Text(
              "hello world",
              style: TextStyle(
                fontSize: 30,
                color: const Color.fromARGB(255, 13, 15, 17),
                backgroundColor: Colors.white,
              ),
            ),

            SizedBox(height: 15),

            Container(height: 80, width: 200, color: Colors.orange),
            SizedBox(height: 10),
            Container(height: 80, width: 200, color: Colors.green),
            SizedBox(height: 10),
            Container(height: 80, width: 200, color: Colors.lightBlueAccent),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 80, width: 80, color: Colors.orange),
                SizedBox(width: 10),
                Container(height: 80, width: 80, color: Colors.green),
                SizedBox(width: 10),
                Container(height: 80, width: 80, color: Colors.lightBlueAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
