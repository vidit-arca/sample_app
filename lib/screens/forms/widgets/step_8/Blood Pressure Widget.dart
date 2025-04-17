import 'package:flutter/material.dart';

class BloodPressureWidget extends StatefulWidget {
  @override
  _BloodPressureWidgetState createState() => _BloodPressureWidgetState();
}

class _BloodPressureWidgetState extends State<BloodPressureWidget> {
  final _sbpController = TextEditingController();
  final _dbpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _sbpController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Systolic Blood Pressure (SBP) mm Hg',
          ),
        ),
        TextField(
          controller: _dbpController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Diastolic Blood Pressure (DBP) mm Hg',
          ),
        ),
      ],
    );
  }
}
