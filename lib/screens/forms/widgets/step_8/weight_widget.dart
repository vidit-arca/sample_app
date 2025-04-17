import 'package:flutter/material.dart';

class WeightWidget extends StatefulWidget {
  final Function(double) onChanged;

  const WeightWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _WeightWidgetState createState() => _WeightWidgetState();
}

class _WeightWidgetState extends State<WeightWidget> {
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: weightController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: "Weight (kg)",
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {
        double weight = double.tryParse(value) ?? 0.0;
        widget.onChanged(weight);
      },
    );
  }
}
