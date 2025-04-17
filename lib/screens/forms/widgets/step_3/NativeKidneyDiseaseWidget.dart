import 'package:flutter/material.dart';

class NativeKidneyDiseaseWidget extends StatelessWidget {
  final bool showNKDInput; // Determines if the NKD dropdown should be visible
  final Function(String) onNKDSelectionChanged; // Callback for the selected option

  const NativeKidneyDiseaseWidget({
    Key? key,
    required this.showNKDInput,
    required this.onNKDSelectionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Only show the text and dropdown if showNKDInput is true
          if (showNKDInput)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Participant’s Native Kidney Disease (NKD)',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  hint: const Text('Select NKD Type'),
                  decoration: InputDecoration(
                    labelText: 'Native Kidney Disease (NKD)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                  ),
                  items: ['Diabetic Kidney Disease', 'Others'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      onNKDSelectionChanged(newValue); // Notify parent widget of selection
                    }
                  },
                  isExpanded: true,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
