import 'package:flutter/material.dart';

class CancerHistoryWidget extends StatelessWidget {
  final bool showField; // Flag to show the field only if Cancer = Yes
  final Function(String?) onCancerChanged; // Callback for Cancer dropdown

  const CancerHistoryWidget({
    Key? key,
    required this.showField,
    required this.onCancerChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Do you have a history of cancer?",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<String>(
          items: const [
            DropdownMenuItem(value: "Yes", child: Text("Yes")),
            DropdownMenuItem(value: "No", child: Text("No")),
          ],
          onChanged: onCancerChanged,
          decoration: InputDecoration(
            hintText: 'Select an option',
            hintStyle: TextStyle(
              color: Colors.grey[400], // Softer hint text color
            ),
            prefixIcon: Icon(
              Icons.health_and_safety, // Icon representing health
              color: Colors.blueAccent, // Consistent icon color
            ),
            filled: true,
            fillColor: Colors.grey[100], // Light background color for the field
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
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
