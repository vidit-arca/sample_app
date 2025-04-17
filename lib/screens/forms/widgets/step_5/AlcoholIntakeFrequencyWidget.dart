import 'package:flutter/material.dart';

class AlcoholIntakeFrequencyWidget extends StatelessWidget {
  final String? selectedFrequency;
  final Function(String?) onFrequencyChanged;

  const AlcoholIntakeFrequencyWidget({
    Key? key,
    required this.selectedFrequency,
    required this.onFrequencyChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Specify Alcohol Intake Frequency',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            value: selectedFrequency,
            decoration: InputDecoration(
              labelText: 'Alcohol Intake Frequency',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            items: const [
              DropdownMenuItem(
                value: 'Daily',
                child: Text('Daily'),
              ),
              DropdownMenuItem(
                value: '2-3 times a week',
                child: Text('2-3 times a week'),
              ),
              DropdownMenuItem(
                value: '>4 times a month',
                child: Text('>4 times a month'),
              ),
              DropdownMenuItem(
                value: 'Occasionally',
                child: Text('Occasionally'),
              ),
            ],
            onChanged: onFrequencyChanged,
          ),
        ],
      ),
    );
  }
}
