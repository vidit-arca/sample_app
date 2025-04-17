import 'package:flutter/material.dart';

class HistoryOfCKDWidget extends StatefulWidget {
  final bool showCKDInput; // Determines if the dropdown should be visible
  final Function(String) onSelectionChanged; // Callback for the selected option

  const HistoryOfCKDWidget({
    Key? key,
    required this.showCKDInput,
    required this.onSelectionChanged,
  }) : super(key: key);

  @override
  _HistoryOfCKDWidgetState createState() => _HistoryOfCKDWidgetState();
}

class _HistoryOfCKDWidgetState extends State<HistoryOfCKDWidget> {
  String? selectedValue; // To hold the selected value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Participant’s History of Chronic Kidney Disease (CKD)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          // Only show the dropdown if showCKDInput is true
          if (widget.showCKDInput)
            DropdownButtonFormField<String>(
              value: selectedValue,
              decoration: InputDecoration(
                labelText: 'Select Yes/No',
                labelStyle: const TextStyle(
                  color: Colors.deepPurple, // Label text color
                ),
                prefixIcon: Icon(
                  Icons.healing, // Icon representing health/disease
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
                hintText: 'Select Yes/No',
                hintStyle: TextStyle(
                  color: Colors.grey[400], // Softer hint text color
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Yes',
                  child: Text('Yes'),
                ),
                DropdownMenuItem(
                  value: 'No',
                  child: Text('No'),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue; // Update the selected value
                });
                if (newValue != null) {
                  widget.onSelectionChanged(newValue); // Notify parent widget of selection
                }
              },
            ),
        ],
      ),
    );
  }
}
