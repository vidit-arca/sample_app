import 'package:flutter/material.dart';

class HypothyroidismDurationWidget extends StatelessWidget {
  final bool isHypothyroidismSelected; // Flag to show this widget only if Hypothyroidism = Yes
  final Function(String?) onChanged; // Callback for Duration change

  const HypothyroidismDurationWidget({
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
                "Specify Duration of Hypothyroidism in years",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number, // Allow numeric input
                decoration: InputDecoration(
                  labelText: 'Duration (years)',
                  labelStyle: TextStyle(
                    color: Colors.grey[600], // Consistent label color
                  ),
                  hintText: 'Enter duration in years',
                  hintStyle: TextStyle(
                    color: Colors.grey[400], // Softer hint text color
                  ),
                  prefixIcon: Icon(
                    Icons.timer, // Icon for duration input
                    color: Colors.blueAccent, // Consistent icon color
                  ),
                  filled: true,
                  fillColor: Colors.grey[100], // Light background color for the field
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners for a smoother look
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blueAccent.withOpacity(0.5),
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ), // Padding inside the input field
                ),
                onChanged: onChanged, // Call the onChanged function to update the value
              ),
            ],
          )
        : const SizedBox.shrink(); // Return an empty widget if Hypothyroidism is not selected
  }
}
