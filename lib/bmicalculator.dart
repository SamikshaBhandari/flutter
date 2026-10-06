import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _weightInKgController = TextEditingController();
  final TextEditingController _heightInKgController = TextEditingController();
  double? _bmi;

  final RegExp _numberRegex = RegExp(r'^\d+(\.\d+)?$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        color: Colors.grey.shade200,
        width: double.maxFinite,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12,
            children: [
              const Text("Calculate your BMI", style: TextStyle(fontSize: 30)),

              TextFormField(
                controller: _weightInKgController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                decoration: InputDecoration(
                  hintText: "Weight(kg)",
                  labelText: "Enter your weight in kg",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a weight";
                  }
                  if (!_numberRegex.hasMatch(value)) {
                    return "wrong weight";
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _heightInKgController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                decoration: InputDecoration(
                  hintText: "Height(cm)",
                  labelText: "Enter your height in cm",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter a height";
                  }
                  if (!_numberRegex.hasMatch(value)) {
                    return "wrong height";
                  }
                  return null;
                },
              ),

              SizedBox(
                width: double.maxFinite,
                child: FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      double weightInKg = double.parse(
                        _weightInKgController.text.trim(),
                      );
                      double heightInCM = double.parse(
                        _heightInKgController.text.trim(),
                      );

                      if (heightInCM > 0) {
                        double heightInMeter = heightInCM / 100;
                        _bmi = weightInKg / (heightInMeter * heightInMeter);
                      }
                      setState(() {});
                    }
                  },
                  child: const Text("Calculate"),
                ),
              ),

              if (_bmi != null)
                Text(
                  'Your BMI is: ${_bmi!.toStringAsFixed(1)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
