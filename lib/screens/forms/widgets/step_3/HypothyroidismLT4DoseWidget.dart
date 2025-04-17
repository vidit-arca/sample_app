import 'package:flutter/material.dart';

class HypothyroidismLT4DoseWidget extends StatelessWidget {
  final bool isHypothyroidismSelected; // Flag to show this widget only if Hypothyroidism = Yes
  final Function(String?) onChanged; // Callback for LT4 dose input

  const HypothyroidismLT4DoseWidget({
    Key? key,
    required this.isHypothyroidismSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isHypothyroidismSelected
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Specify Last Levothyroxine Dose (LT4) in mg",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number, // Allow numeric input
                decoration: InputDecoration(
                  hintText: 'Enter LT4 dose in mg',
                  hintStyle: TextStyle(
                    color: Colors.grey[400], // Softer hint text color
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
                onChanged: onChanged, // Call the onChanged function to update the value
              ),
            ],
          )
        : const SizedBox.shrink(); // Return an empty widget if Hypothyroidism is not selected
  }
}
