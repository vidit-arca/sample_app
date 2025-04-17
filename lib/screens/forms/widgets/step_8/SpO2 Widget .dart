import 'package:flutter/material.dart';

class SpO2Widget extends StatefulWidget {
  @override
  _SpO2WidgetState createState() => _SpO2WidgetState();
}

class _SpO2WidgetState extends State<SpO2Widget> {
  final _controller = TextEditingController();
  String? _errorText;

  void _validateSpO2(String value) {
    final spo2 = int.tryParse(value);
    if (spo2 != null && spo2 >= 0 && spo2 <= 100) {
      setState(() {
        _errorText = null;
      });
    } else {
      setState(() {
        _errorText = 'SpO2 must be between 0 and 100.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Oxygen Saturation (SpO2) %',
            errorText: _errorText,
          ),
          onChanged: _validateSpO2,
        ),
      ],
    );
  }
}
