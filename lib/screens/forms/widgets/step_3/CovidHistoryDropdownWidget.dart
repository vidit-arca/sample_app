import 'package:flutter/material.dart';

class CovidHistoryDropdownWidget extends StatelessWidget {
  final String? selectedOption; // Stores the selected value (Yes/No)
  final Function(String?) onOptionChanged; // Callback when the dropdown value changes

  const CovidHistoryDropdownWidget({
    Key? key,
    required this.selectedOption,
    required this.onOptionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Participants History of Prior COVID-19 Infection:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            hint: const Text(
              'Select Yes/No',
              style: TextStyle(
                color: Colors.grey, // Softer hint text color
              ),
            ),
            decoration: InputDecoration(
              labelText: 'Prior COVID-19 Infection History',
              labelStyle: const TextStyle(
                color: Colors.blueAccent, // Label text color
              ),
              prefixIcon: Icon(
                Icons.coronavirus, // Icon representing COVID-19
                color: Colors.blueAccent, // Icon color matching theme
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.blueAccent.withOpacity(0.5),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              ),
              filled: true,
              fillColor: Colors.grey[100], // Background color for the field
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
            ),
            value: selectedOption,
            items: ['Yes', 'No'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onOptionChanged,
            isExpanded: true,
          ),
        ],
      ),
    );
  }
}
