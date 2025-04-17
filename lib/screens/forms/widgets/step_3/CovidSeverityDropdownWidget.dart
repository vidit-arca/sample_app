import 'package:flutter/material.dart';

class CovidSeverityDropdownWidget extends StatelessWidget {
  final String? selectedSeverity; // Stores the selected severity (Mild/Moderate/Severe)
  final Function(String?) onSeverityChanged; // Callback when the dropdown value changes

  const CovidSeverityDropdownWidget({
    Key? key,
    required this.selectedSeverity,
    required this.onSeverityChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Specify Severity of COVID-19 Infection:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            hint: const Text('Select Severity'),
            decoration: InputDecoration(
              labelText: 'COVID-19 Severity',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
            ),
            value: selectedSeverity,
            items: ['Mild', 'Moderate', 'Severe'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onSeverityChanged,
            isExpanded: true,
          ),
        ],
      ),
    );
  }
}
