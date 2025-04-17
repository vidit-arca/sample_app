import 'package:flutter/material.dart';

class HistoryOfHypertension extends StatefulWidget {
  final Function(String?) onHypertensionSelected;

  const HistoryOfHypertension({
    Key? key,
    required this.onHypertensionSelected,
  }) : super(key: key);

  @override
  _HistoryOfHypertensionState createState() => _HistoryOfHypertensionState();
}

class _HistoryOfHypertensionState extends State<HistoryOfHypertension> {
  String? _selectedHypertension;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Add padding to the whole widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            'Does the participant have a history of Systemic Hypertension?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          // Dropdown Input with Prefix Icon and Color Settings
          DropdownButtonFormField<String>(
            value: _selectedHypertension,
            decoration: InputDecoration(
              labelText: 'Hypertension History',
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.teal, // Updated theme color
              ),
              prefixIcon: const Icon(
                Icons.health_and_safety, // Updated icon
                color: Colors.teal, // Match theme color
              ),
              filled: true,
              fillColor: Colors.teal[50], // Light background color
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.teal,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.teal,
                  width: 2,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.redAccent,
                  width: 2,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.redAccent,
                  width: 2,
                ),
              ),
            ),
            hint: const Text('Select Yes or No'),
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
                _selectedHypertension = newValue;
              });
              widget.onHypertensionSelected(newValue);
            },
          ),
        ],
      ),
    );
  }
}
