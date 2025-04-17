import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
  final Function(double) onChanged;

  const HeightWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _HeightWidgetState createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: heightController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: "Height (cm)",
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {
        double height = double.tryParse(value) ?? 0.0;
        widget.onChanged(height);
      },
    );
  }
}
