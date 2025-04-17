import 'package:flutter/material.dart';

class EpilepsyDurationWidget extends StatelessWidget {
  final bool showField; // Flag to show the field only if Epilepsy = Yes
  final TextEditingController controller; // Controller for numeric input

  const EpilepsyDurationWidget({
    Key? key,
    required this.showField,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return showField
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Specify the duration of epilepsy in years:",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter duration in years',
                  hintStyle: TextStyle(
                    color: Colors.grey[400], // Softer hint text color
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the duration in years';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
            ],
          )
        : const SizedBox.shrink(); // Empty widget if showField is false
  }
}
