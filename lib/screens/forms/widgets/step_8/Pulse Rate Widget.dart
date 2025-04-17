import 'package:flutter/material.dart';

class PulseRateWidget extends StatefulWidget {
  @override
  _PulseRateWidgetState createState() => _PulseRateWidgetState();
}

class _PulseRateWidgetState extends State<PulseRateWidget> {
  final _controller = TextEditingController();
  String? _errorText;

  void _validatePulseRate(String value) {
    final pulseRate = int.tryParse(value);
    if (pulseRate != null) {
      if (pulseRate < 0 || pulseRate > 200) {
        setState(() {
          _errorText = 'Pulse Rate must be between 0 and 200.';
        });
      } else {
        setState(() {
          _errorText = null;
        });
      }
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
            labelText: 'Pulse Rate (beats/min)',
            errorText: _errorText,
          ),
          onChanged: _validatePulseRate,
        ),
      ],
    );
  }
}
