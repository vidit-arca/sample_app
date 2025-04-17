import 'package:flutter/material.dart';

class DurationOfCKD extends StatelessWidget {
  final bool showDurationInput; // Determines if the input field is shown
  final TextEditingController durationController; // Controller for the input field

  const DurationOfCKD({
    super.key,
    required this.showDurationInput,
    required this.durationController,
  });

  @override
  Widget build(BuildContext context) {
    if (!showDurationInput) {
      return const SizedBox(); // If CKD is not selected, don't show the input
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600), // Apply responsive width
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Specify Duration of Chronic Kidney Disease (CKD) in Years',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12), // Spacing between title and input
              TextField(
                controller: durationController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Duration in Years',
                  border: OutlineInputBorder(),
                ),
                maxLength: 3, // Limit input to 3 digits (for years)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
