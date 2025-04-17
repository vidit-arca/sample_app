import 'package:flutter/material.dart';

class PsychiatricIllnessWidget extends StatelessWidget {
  final String? selectedValue; // Selected value for dropdown
  final ValueChanged<String?> onChanged; // Callback for dropdown selection

  const PsychiatricIllnessWidget({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Do you have a history of Psychiatric Illness?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            value: selectedValue,
            items: const [
              DropdownMenuItem(value: "Yes", child: Text("Yes")),
              DropdownMenuItem(value: "No", child: Text("No")),
            ],
            onChanged: onChanged,
            decoration: InputDecoration(
              labelText: 'History of Psychiatric Illness',
              labelStyle: const TextStyle(
                color: Colors.deepPurple, // Label text color
              ),
              prefixIcon: Icon(
                Icons.psychology, // Icon representing psychiatric illness
                color: Colors.deepPurple, // Icon color matching the theme
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.deepPurple.withOpacity(0.5),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.deepPurple,
                  width: 2,
                ),
              ),
              filled: true,
              fillColor: Colors.grey[100], // Background color for the field
              hintText: 'Select an option',
              hintStyle: TextStyle(
                color: Colors.grey[400], // Softer hint text color
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
            ),
            isExpanded: true,
          ),
        ],
      ),
    );
  }
}
