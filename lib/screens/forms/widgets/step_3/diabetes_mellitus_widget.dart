import 'package:flutter/material.dart';

class DiabetesMellitusWidget extends StatefulWidget {
  final Function(String?) onSelectionChanged;

  const DiabetesMellitusWidget({
    Key? key,
    required this.onSelectionChanged,
  }) : super(key: key);

  @override
  _DiabetesMellitusWidgetState createState() => _DiabetesMellitusWidgetState();
}

class _DiabetesMellitusWidgetState extends State<DiabetesMellitusWidget> {
  String? _selectedOption = 'No'; // Default option

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            'Participant’s History of Diabetes Mellitus (DM)',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),

          // Dropdown Input with Color and Icon Customization
          DropdownButtonFormField<String>(
            value: _selectedOption,
            decoration: InputDecoration(
              labelText: 'Select an option',
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent,
              ),
              prefixIcon: const Icon(
                Icons.bloodtype, // Suitable icon for Diabetes Mellitus
                color: Colors.blueAccent,
              ),
              filled: true,
              fillColor: Colors.grey[100],
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.blueAccent,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.blueAccent,
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
                _selectedOption = newValue;
              });
              widget.onSelectionChanged(newValue);
            },
          ),
        ],
      ),
    );
  }
}
