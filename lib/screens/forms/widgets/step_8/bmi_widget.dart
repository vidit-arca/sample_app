import 'package:flutter/material.dart';

class BMIWidget extends StatefulWidget {
  final double height;
  final double weight;

  const BMIWidget({Key? key, required this.height, required this.weight}) : super(key: key);

  @override
  _BMIWidgetState createState() => _BMIWidgetState();
}

class _BMIWidgetState extends State<BMIWidget> {
  double calculateBMI(double height, double weight) {
    if (height > 0 && weight > 0) {
      double heightInMeters = height / 100; // Convert cm to meters
      return weight / (heightInMeters * heightInMeters);
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    double bmi = calculateBMI(widget.height, widget.weight);

    return TextField(
      readOnly: true,
      controller: TextEditingController(text: bmi > 0 ? bmi.toStringAsFixed(2) : ""),
      decoration: const InputDecoration(
        labelText: "BMI (Auto-calculated)",
        border: OutlineInputBorder(),
      ),
    );
  }
}
