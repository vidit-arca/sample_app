import 'package:flutter/material.dart';

class TemperatureWidget extends StatefulWidget {
  @override
  _TemperatureWidgetState createState() => _TemperatureWidgetState();
}

class _TemperatureWidgetState extends State<TemperatureWidget> {
  final _controller = TextEditingController();
  String? _errorText;

  void _validateTemperature(String value) {
    final temperature = double.tryParse(value);
    if (temperature != null && temperature >= 1.0) {
      setState(() {
        _errorText = null;
      });
    } else {
      setState(() {
        _errorText = 'Please enter a valid temperature (°F).';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            labelText: 'Temperature (°F)',
            errorText: _errorText,
          ),
          onChanged: _validateTemperature,
        ),
      ],
    );
  }
}
