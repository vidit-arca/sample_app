import 'package:flutter/material.dart';

class BronchialAsthmaWidget extends StatefulWidget {
  final Function(String?) onChanged; // Callback for selected value

  const BronchialAsthmaWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _BronchialAsthmaWidgetState createState() => _BronchialAsthmaWidgetState();
}

class _BronchialAsthmaWidgetState extends State<BronchialAsthmaWidget> {
  String? selectedOption; // Stores the selected option

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Participant’s History of Bronchial Asthma",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<String>(
          value: selectedOption,
          decoration: InputDecoration(
            labelText: 'Bronchial Asthma',
            labelStyle: TextStyle(
              color: Colors.grey[600], // Consistent label color
            ),
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
          items: ["Yes", "No"]
              .map((option) => DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
            widget.onChanged(value); // Pass the selected value back to the parent
          },
        ),
      ],
    );
  }
}
