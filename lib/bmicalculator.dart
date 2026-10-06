import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _weightInKgController = TextEditingController();
  final TextEditingController _heightInKgController = TextEditingController();
  double? _bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator")),
      body: Container(
        padding: EdgeInsets.only(top: 16),
        color: Colors.grey.shade200,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Text("Calculate your BMI", style: TextStyle(fontSize: 30)),

            TextField(
              controller: _weightInKgController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Weight(kg)",
                labelText: "Enter your weight in kg",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            TextField(
              controller: _heightInKgController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Height(m)",
                labelText: "Enter your height in cm",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () {
                  double? weightInKg = double.tryParse(
                    _weightInKgController.text,
                  );
                  double? heightInCM = double.tryParse(
                    _heightInKgController.text,
                  );

                  if (weightInKg != null &&
                      heightInCM != null &&
                      heightInCM > 0) {
                    double heightInMeter = heightInCM / 100;
                    _bmi = weightInKg / (heightInMeter * heightInMeter);
                  }

                  setState(() {});
                },
                child: Text("Calculate"),
              ),
            ),

            // ElevatedButton(onPressed: () {}, child: Text("Calculate")),
            //OutlinedButton(onPressed: () {}, child: Text("Calculate")),
            //IconButton(onPressed: () {}, icon: Icon(Icons.calculate),),
            if (_bmi != null)
              Text(
                'Your BMI is: ${_bmi!.ceil()}',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }

  String getBMICategory(double bmi) {
    if (bmi <= 18.5) {
      return "underweight";
    } else if (bmi > 18.5 && bmi <= 24.5) {
      return "Normal";
    } else if (bmi > 24.5 && bmi <= 29.5) {
      return "OverWeight";
    }
    return "Obese";
  }
}
