import 'package:flutter/material.dart';

class PriorHOCSWidget extends StatelessWidget {
  final bool isIHDSelected; // Flag to show this widget only if IHD = Yes
  final Function(String?) onChanged; // Callback for ACS history selection

  const PriorHOCSWidget({
    Key? key,
    required this.isIHDSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isIHDSelected
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Do you have a history of Acute Coronary Syndrome (ACS)?",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(value: "Yes", child: Text("Yes")),
                  DropdownMenuItem(value: "No", child: Text("No")),
                ],
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: 'Select an option',
                  hintStyle: TextStyle(
                    color: Colors.grey[400], // Softer hint text color
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
            ],
          )
        : const SizedBox.shrink(); // Return an empty widget if IHD is not selected
  }
}
