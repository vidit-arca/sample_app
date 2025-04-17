import 'package:flutter/material.dart';

class DyslipidemiaWidget extends StatefulWidget {
  final Function(String?) onSelectionChanged;

  const DyslipidemiaWidget({Key? key, required this.onSelectionChanged})
      : super(key: key);

  @override
  _DyslipidemiaWidgetState createState() => _DyslipidemiaWidgetState();
}

class _DyslipidemiaWidgetState extends State<DyslipidemiaWidget> {
  String? _selectedOption; // Stores the selected option (Yes/No)

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            'Participant’s History of Dyslipidemia (DLP)',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          // Dropdown for Yes/No
          DropdownButtonFormField<String>(
            value: _selectedOption,
            decoration: InputDecoration(
              labelText: 'Select an option',
              labelStyle: TextStyle(color: Colors.teal[700]),
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
