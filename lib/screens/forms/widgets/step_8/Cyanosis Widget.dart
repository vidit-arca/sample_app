import 'package:flutter/material.dart';

class CyanosisWidget extends StatefulWidget {
  final Function(String) onChanged;

  const CyanosisWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _CyanosisWidgetState createState() => _CyanosisWidgetState();
}

class _CyanosisWidgetState extends State<CyanosisWidget> {
  String selectedValue = "No"; // Default selection

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Cyanosis",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          value: selectedValue,
          decoration: InputDecoration(
            labelText: "Select an option",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
          ),
          items: ["Yes", "No"].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
            widget.onChanged(selectedValue); // Update parent state
          },
        ),
      ],
    );
  }
}
