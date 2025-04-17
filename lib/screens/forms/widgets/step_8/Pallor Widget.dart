import 'package:flutter/material.dart';

class PallorWidget extends StatefulWidget {
  final Function(String?) onChanged;

  const PallorWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _PallorWidgetState createState() => _PallorWidgetState();
}

class _PallorWidgetState extends State<PallorWidget> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pallor',
            style: TextStyle(
              fontSize: 16,
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
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'Yes', child: Text('Yes')),
              DropdownMenuItem(value: 'No', child: Text('No')),
            ],
            onChanged: (newValue) {
              setState(() {
                _selectedOption = newValue;
              });
              widget.onChanged(newValue);
            },
          ),
        ],
      ),
    );
  }
}
