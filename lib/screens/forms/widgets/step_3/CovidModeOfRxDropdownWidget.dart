import 'package:flutter/material.dart';

class CovidModeOfRxDropdownWidget extends StatelessWidget {
  final String? selectedMode; // Stores the selected mode (OP/IP/ICU)
  final Function(String?) onModeChanged; // Callback when the dropdown value changes

  const CovidModeOfRxDropdownWidget({
    Key? key,
    required this.selectedMode,
    required this.onModeChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Specify Mode of Treatment for COVID-19:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            hint: const Text('Select Mode of Treatment'),
            decoration: InputDecoration(
              labelText: 'Mode of Treatment',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
            ),
            value: selectedMode,
            items: ['OP', 'IP', 'ICU'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onModeChanged,
            isExpanded: true,
          ),
        ],
      ),
    );
  }
}
