import 'package:flutter/material.dart';

class EpilepsyHistoryWidget extends StatelessWidget {
  final String? selectedValue; // Stores the selected value (Yes/No)
  final Function(String?) onChanged; // Callback for value selection

  const EpilepsyHistoryWidget({
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
          "Do you have a history of Epilepsy?",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
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
            labelText: 'Epilepsy History',
            labelStyle: TextStyle(
              color: Colors.grey[600], // Consistent label color
            ),
            hintText: 'Select an option',
            hintStyle: TextStyle(
              color: Colors.grey[400], // Softer hint text color
            ),
            prefixIcon: Icon(
              Icons.medical_services_outlined, // Icon representing medical history
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
        ),
      ],
    );
  }
}
