import 'package:flutter/material.dart';

class HypothyroidismHistoryWidget extends StatelessWidget {
  final String? selectedValue; // Selected value for Hypothyroidism
  final Function(String?) onChanged; // Callback for value change

  const HypothyroidismHistoryWidget({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Participant’s History of Hypothyroidism",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<String>(
          value: selectedValue,
          decoration: InputDecoration(
            labelText: 'Hypothyroidism History',
            labelStyle: TextStyle(
              color: Colors.grey[600], // Consistent label color
            ),
            hintText: 'Select an option',
            hintStyle: TextStyle(
              color: Colors.grey[400], // Softer hint text color
            ),
            prefixIcon: Icon(
              Icons.medical_services, // Icon representing medical history
              color: Colors.blueAccent, // Consistent icon color
            ),
            filled: true,
            fillColor: Colors.grey[100], // Light background color for the field
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners for a smoother look
              borderSide: BorderSide(
                color: Colors.blueAccent,
                width: 2,
              ),
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
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ), // Padding inside the dropdown
          ),
          items: const [
            DropdownMenuItem(value: "Yes", child: Text("Yes")),
            DropdownMenuItem(value: "No", child: Text("No")),
          ],
          onChanged: onChanged,
        ),
      ],
    );
  }
}
