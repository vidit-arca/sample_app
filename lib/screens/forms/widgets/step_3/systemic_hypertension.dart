import 'package:flutter/material.dart';

class SystemicHypertensionWidget extends StatefulWidget {
  final Function(String?) onSelectionChanged;

  const SystemicHypertensionWidget({Key? key, required this.onSelectionChanged})
      : super(key: key);

  @override
  _SystemicHypertensionWidgetState createState() =>
      _SystemicHypertensionWidgetState();
}

class _SystemicHypertensionWidgetState
    extends State<SystemicHypertensionWidget> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Participant’s History of Systemic Hypertension',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            value: _selectedOption,
            decoration: InputDecoration(
              labelText: 'Select an option',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
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
            onChanged: (value) {
              setState(() {
                _selectedOption = value;
              });
              widget.onSelectionChanged(value); // Notify parent widget
            },
          ),
        ],
      ),
    );
  }
}
