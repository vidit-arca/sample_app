import 'package:flutter/material.dart';

class RespiratoryRateWidget extends StatefulWidget {
  @override
  _RespiratoryRateWidgetState createState() => _RespiratoryRateWidgetState();
}

class _RespiratoryRateWidgetState extends State<RespiratoryRateWidget> {
  final _controller = TextEditingController();
  String? _errorText;

  void _validateRespiratoryRate(String value) {
    final rate = int.tryParse(value);
    if (rate != null) {
      setState(() {
        _errorText = null;
      });
    } else {
      setState(() {
        _errorText = 'Please enter a valid number.';
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
            labelText: 'Respiratory Rate (breaths/min)',
            errorText: _errorText,
          ),
          onChanged: _validateRespiratoryRate,
        ),
      ],
    );
  }
}
