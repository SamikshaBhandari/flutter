import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("First app")),
        body: Center(
          child: Text(
            "hello world",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
        ),
      ),
    ),
  );
}
